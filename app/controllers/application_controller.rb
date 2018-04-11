class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all

  def getCount

    gene_id =  session[:GenVal]
    #@Shopcart = Temporder.where(Gen_id: params[:gene_id])
    return @ShopCart= Temporder.where(Gen_id: gene_id).sum('Quantity')


  end


  def getTotal
    gene_id =  session[:GenVal]
    return @TotalCost= Temporder.where(Gen_id: gene_id).sum('Price')
  end
end
