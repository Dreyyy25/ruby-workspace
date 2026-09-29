class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def new
  end

  def show
    render json: Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    Product.create(name: params[:name], quantity: params[:quantity], price: params[:price])
    redirect_to "/products"
  end

  def count
    render plain: "Total number of products: #{Product.count}"
  end
end
