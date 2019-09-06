class Api::ProductsController < ApplicationController

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
        image_url: params[:image_url],
        description: params[:description],
        inventory_status: params[:inventory_status]
      )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @product = Product.new(
    name: params[:name] || @product.name,
    price: params[:price] || @product.price,
    image_url: params[:image_url] || @product.image_url,
    description: params[:description] || @product.description,
    inventory_status: params[:inventory_status] || @product.inventory_status
    )
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
