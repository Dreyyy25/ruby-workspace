class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def show
    render json: Product.find(params[:id])
  end

  def new
  end

  def create
    product = params[:product]
    Product.create(name: product[:name], quantity: product[:quantity])
    redirect_to "/products"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = params[:product]
    Product.find(params[:id]).update(name: product[:name], quantity: product[:quantity])
    redirect_to "/products"
  end

  def count
    render plain: "There are #{Product.all.to_a.length} products."
  end
end
