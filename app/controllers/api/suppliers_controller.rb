class Api::SuppliersController < ApplicationController

  def show
    @supplier = Supplier.find(params[:id])
    render 'show.json.jb' 
  end

  def index
    @supplier = Supplier.all

    if params[:search]
      @suppliers = @suppliers.where("name iLIKE ? OR email iLIKE ? OR phone_number iLIKE ? ", "%#{params[:search]}%",  "%#{params[:search]}%",  "%#{params[:search]}%")
    end

    @suppliers = @suppliers.order(:id)

    render 'index.json.jb'
  end

  def create
    @supplier = Supplier.new(
        name: params[:name],
        email: params[:email],
        phone_number: params[:phone_number],
      )
    if @supplier.save
      render 'show.json.jb'
    else
      render json: {errors: @supplier.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @supplier = Supplier.new(
       name: params[:name] || @supplier.name,
       email: params[:email] || @supplier.email,
       phone_number: params[:phone_number] || @supplier.phone_number
      )
    if @supplier.save
      render 'show.json.jb'
    else
      render json: {errors: @supplier.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    render json: {message: "This supplier has been destroyed!"}
  end
end
