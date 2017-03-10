class ProductsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]

  def index
    sort = params[:sort]
    order = params[:order] || "asc"
    where = params[:where]
    search = params[:search]

    if sort
    @games = Product.order(sort => order)
    elsif where
    @games = Product.where(where)
    elsif search
    @games = Product.where("game_name LIKE ?", "%#{search}%")
    elsif params[:category]
    selected = Category.find_by(name: params[:category])
    @games = selected.product
    else
    @games = Product.all
    end
    render 'index.html.erb'
  end

  def show
    if params[:id] == "random"
      @game = params[:id] = Product.all.sample
    else
    @game = Product.find_by(id: params[:id])
    end
  end

  def new
    @game = Product.new
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
      description: params[:description],
      age_limit: params[:age_limit],
      price: params[:price], 
      supplier_id: params[:supplier_id]
           )

    if @game.save
      flash[:info] = "Update Successful"
      @game.images.create(url: params[:images])
      redirect_to "/products/#{@game.id}"
    else
      flash[:error] = "Issa no for me dawg..."
      render "edit.html.erb"
    end

  end

  def create

    @game = Product.new(
      game_name: params[:game_name],
      player_min: params[:player_min],
      player_max: params[:player_max],
      time: params[:time],
      age_limit: params[:age_limit], 
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id])
    if @game.save
    flash[:success] = "New Game has been added"
    @game.images.create(url: params[:image])
    redirect_to "/products/#{@game.id}"
    else 
    flash[:warning] = "Could not save that game :T"
    render "new.html.erb"
    end
  end

  def destroy
    @game = Product.find_by(id: params[:id])
    @game.delete
    flash[:danger] = "Deleted"
    redirect_to "/products"
  end

end
