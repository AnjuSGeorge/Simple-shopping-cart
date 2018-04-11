class CategoriesController < ApplicationController
  def show
    @cat = Product.where(category_id: params[:id])
  end
end
