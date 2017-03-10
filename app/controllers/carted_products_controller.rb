class CartedProductsController < ApplicationController


def index
  if current_user
    if current_user.carted_products.where(status: "carted") ==[]
    redirect_to "/"
    else
    @cartedproducts = current_user.carted_products.where(status: "carted")

    end
  else 
  redirect_to "/"
  end
end

def create
    order = CartedProduct.new(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id])
    order.status = "carted"
    order.save
    redirect_to "/cart"
end

def destroy
  product = CartedProduct.find_by(id: params[:id])
  product.update(status: "removed")
  redirect_to "/cart"
end
end
