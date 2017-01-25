class ProductsController < ApplicationController
  def index
    @boardgames = Product.all
    render 'index.html.erb'
  end

def show
  @game = Product.find_by(id: params[:id])
end
  def new
    
  end

  def edit
    @game = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @game = Product.find_by(id: params[:id])
    @game.assign_attributes(
      game_name: params[:game_name],
       player_min: params[:player_min],
      player_max: params[:player_max],
         time: params[:time],
          age_limit: params[:age_limit],
           image: params[:image], price: params[:price]
           )
    @game.save
    flash[:info] = "Update Successful"
    redirect_to "/products/#{@game.id}"

  end

  def create
    # @game = Product.new(
    #   game_name: params[:game_name],
    #    player_min: params[:player_min],
    #   player_max: params[:player_max],
    #      time: params[:time],
    #       age_limit: params[:age_limit],
    #        image: params[:image]
    #        )
    # @game.save
    @game = Product.create(
      game_name: params[:game_name],
       player_min: params[:player_min],
      player_max: params[:player_max],
         time: params[:time],
          age_limit: params[:age_limit],
           image: params[:image], 
           price: params[:price])
    flash[:success] = "New Game has been added"
    redirect_to "/products/#{@game.id}"
  end

  def destroy
    @game = Product.find_by(id: params[:id])
    @game.delete
    flash[:danger] = "Deleted"
    redirect_to "/products"
  end

end
