class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :product 

  validates :user_id, :product_id, :quantity, presence: true
  validates :quantity, :user_id, :product_id, numericality: {only_integer: true}


  def find_subtotal
    self.subtotal = product.price.to_i  * quantity
  end

  def find_tax
    self.tax = subtotal * 0.09
  end

  def find_total
  self.total = tax + subtotal
  end

  def find_absolute_total
    find_subtotal
    find_tax
    find_total
  end
  
end
