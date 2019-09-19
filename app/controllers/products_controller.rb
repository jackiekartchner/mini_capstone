class ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.html.erb'
  end 

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        inventory_status: params[:inventory_status],
        supplier_id: params[:supplier_id]
      )
    if @product.save
      redirect_to "/products/#{@product.id}"
  else
    render json: {errors: @product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        inventory_status: params[:inventory_status],
        supplier_id: params[:supplier_id]
      )
    if redirect_to "/products/#{@product.id}"
    else
      render json: {errors: @product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end
end