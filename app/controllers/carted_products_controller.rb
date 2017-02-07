class CartedProductsController < ApplicationController


def index
  @cartedproducts = CartedProduct.where(status: "carted")
end

def create
    order = CartedProduct.new(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id])
    order.status = "carted"
    order.save
    redirect_to "/cart"
end


end
