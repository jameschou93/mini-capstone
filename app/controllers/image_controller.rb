class ImageController < ApplicationController

  def new
    
  end

  def create
    image = Image.create(url: params[:url], product_id: params[:product_id])
    redirect_to "/"
  end

end
