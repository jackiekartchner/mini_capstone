class Api::ProductsController < ApplicationController

  def all_products_method
    @products = Product.all
    render 'all_products.json.jb'
  end

  def first_product_method
    @product = Product.first 
    render 'first_product.json.jb'
  end

  def third_product_method
    @product = Product.third 
    render 'third_product.json.jb'
  end

  def fourth_product_method
    @product = Product.fourth 
    render 'fourth_product.json.jb'
  end
end
