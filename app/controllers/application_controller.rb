class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :cart_count

  def cart_count
    if current_user
    @count = current_user.carted_products.where(status: "carted").count
    else
    @count = 0
    end
  end

 
  def authenticate_user!
    redirect_to "/" unless current_user
  end

  def authenticate_admin!
    redirect_to "/" unless current_user && current_user.admin
  end

end
