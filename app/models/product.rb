class Product < ApplicationRecord
  belongs_to :supplier, optional: true
  has_many :images
  has_many :orders, through: :carted_products
  has_many :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories

  validates :game_name, :player_min, :description, :price, presence: true
  validates :game_name, uniqueness: true
  validates :price, numericality: true

  def dollar_price
    "$" + price.to_s
  end

  def sale_message
    
    if price.to_i <= 2
      "SALE!!!"
    else 
      "Everyday price :["
    end
  end

  def price_color
    if price.to_i <= 2
      "red"
    else
      "none"
    end
  end
  
  def tax
    "$" + (price.to_i * 0.09).to_s
  end

  def total
    "$" +(price.to_i * 1.09).to_s
  end

end
