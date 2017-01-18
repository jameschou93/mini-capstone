class ProductsController < ApplicationController
  def products
    @boardgames = Product.all
    p @boardgames
    render 'products.html.erb'
  end
end
