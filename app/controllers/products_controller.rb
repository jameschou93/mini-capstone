class ProductsController < ApplicationController
  def products
    @boardgames = Product.all
    p @boardgames
    render 'products.html.erb'
  end

  def newprod
    
  end

  def result
    @game = Product.create(game_name: params[:input_game_name], player_min: params[:input_player_min], player_max: params[:input_player_max], time: params[:input_time], age_limit: params[:input_age_limit], image: params[:input_image])
  end
end
