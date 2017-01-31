class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
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
