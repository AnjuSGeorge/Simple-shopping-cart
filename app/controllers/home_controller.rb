class HomeController < ApplicationController
  def front

    @Products = Product.all

  end
end
