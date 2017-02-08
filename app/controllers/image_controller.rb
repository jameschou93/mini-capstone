class ImageController < ApplicationController

  def new
    unless current_user && current_user.admin
      redirect_to "/"
    end
  end

  def create
    unless current_user && current_user.admin
      redirect_to "/"
    end
    image = Image.create(url: params[:url], product_id: params[:product_id])
    redirect_to "/"
  end

end
