class OrdersController < ApplicationController

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    order = Order.new(user_id: current_user.id
    )
    order.save
    order.confirm_order(carted_products)
    order.find_absolute_total
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    if current_user == nil
      redirect_to '/login'
     elsif current_user.id == @order.user_id
      render 'show.html.erb'
    else
      redirect_to '/'
   end
  end
end
