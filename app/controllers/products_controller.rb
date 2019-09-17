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
        cateogry: params[:cateogry],
        price: params[:price],
        description: params[:description],
        user_id: 1
      )
    @product.save
    redirect_to "/products"
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

end
