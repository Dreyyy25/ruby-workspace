class ProductsController < ApplicationController
  # GET /products
  def index
    render json: Product.all
  end

  # GET /products/new
  def new
    # Renders app/views/products/new.html.erb automatically
  end

  # GET /products/count
  def count
    render plain: "Total products: #{Product.count}"
  end

  # GET /products/:id
  def show
    product = Product.find(params[:id])
    render json: product
  end

  # GET /products/:id/edit
  def edit
    @product = Product.find(params[:id])
    # Renders app/views/products/edit.html.erb with @product
  end

  # POST /products
  def create
    Product.create(product_params)
    redirect_to "/products"
  end

  private

  # Strong parameters to safely permit submitted fields
  def product_params
    params.require(:product).permit(:name, :quantity, :price)
  end
end