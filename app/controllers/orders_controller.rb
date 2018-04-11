class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create

  @order = Order.new(order_params)
 @order.save!
  @temporders = Temporder.where(:Gen_id =>session[:GenVal])
  for showProduct in @temporders do
    showProduct.IsFinal = 1
    showProduct.save!
  end
 # @temporders.save!

 # session.delete(:user_id)
  reset_session

  redirect_to root_url
 end
  private
  def order_params
   params.require(:order).permit(:user_id,:total,:Gen_id)

  end
end
