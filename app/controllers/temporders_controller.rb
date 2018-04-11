class TempordersController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(current_user.id)
    # @order = @user.orders.new(order_params)
    # @order.save!

    @order = Temporder.new(order_params)
    @order.save!
    redirect_to root_url
  end
  def index
    gene_id =  session[:GenVal]
    @items = Temporder.where(Gen_id:gene_id )
  end
  def show
    gene_id =  session[:GenVal]
    @items = Temporder.find(params[:id])
    @items.delete
    @items = Temporder.where(Gen_id:gene_id )
    render "index"
  end
  def destroy
    @order_item = temporders.find(params[:id])
    @order_item.destroy
  end
  private
  def order_params
    params.require(:temporder).permit(:User_id,:Product_id,:Price,:Gen_id)

  end

end
