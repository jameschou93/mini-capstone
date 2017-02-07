class OrdersController < ApplicationController

  # def create
  #   order = Order.new(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id])
  #   order.find_absolute_total
  #   order.save
  #   redirect_to "/orders/#{order.id}"
  # end

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
