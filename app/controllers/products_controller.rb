class ProductsController < ApplicationController

  def show
    @showproduct = Product.find params[:id]
  end
  def new
    @cateogories = Category.all
  end
  def create
    prod = Product.new (params.require(:product).permit(:product_name, :description,:price,:category_id))
    prod.save
    redirect_to root_url
  end
  def index
    @Products = Product.all

  end
end
