class User < ApplicationRecord
  has_secure_password
  has_many :orders

  def subtotal
    product.price.to_i  * quantity
  end

  def tax
    subtotal * 0.09
  end

  def total
    tax + subtotal
  end
end
