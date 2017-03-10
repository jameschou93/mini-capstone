class Order < ApplicationRecord
  has_many :carted_products
  belongs_to :user

  def find_subtotal
    self.subtotal = 0
    carted_products.each do |cartedproduct|

      self.subtotal += cartedproduct.product.price.to_i * cartedproduct.quantity
    end
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
    save
  end

  def confirm_order(input_carted_products)
    input_carted_products.each do |cartedproduct|
      cartedproduct.status = "purchased"
      cartedproduct.order_id = id 
      cartedproduct.save
    end
  end

end
