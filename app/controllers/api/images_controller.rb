class Api::ImagesController < ApplicationController

  def show
    @image = Image.find(params[:id])
    render 'show.json.jb' 
  end

  def index
    @image = Image.all

    if params[:search]
      @images = @images.where("url iLIKE ? OR product_id iLIKE ? ", "%#{params[:search]}%", "%#{params[:search]}%")
    end

    @images = @images.order(:id)

    render 'index.json.jb'
  end

  def create
    @image = Image.new(
        url: params[:url],
        product_id: params[:product_id]
      )
    if @image.save
      render 'show.json.jb'
    else
      render json: {errors: @image.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @image = Image.new(
       url: params[:url] || @image.url,
       product_id: params[:product_id] || @image.product_id
      )
    if @image.save
      render 'show.json.jb'
    else
      render json: {errors: @image.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render json: {message: "This image has been destroyed!"}
  end
end

