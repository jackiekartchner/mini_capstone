class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 100)
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort_order] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id)
    end
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create

    @product = Product.new(
        id: params[:id],
        name: params[:name],
        price: params[:price].to_i,
        images: params[:images],
        description: params[:description],
        inventory_status: params[:inventory_status]
      )

    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i

    calculated_tax = calculated_subtotal * 0.09

    calculated_total = calculated_subtotal + calculated_tax
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product was successfully destroyed!"}
  end

end
