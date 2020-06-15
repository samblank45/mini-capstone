class Order < ApplicationRecord

  belongs_to :product
  belongs_to :user

  has_many :carted_products
  has_many :products, through: :carted_products

  # def order_subtotal
  #   product.price * quantity
  # end

  # def order_tax
  #   subtotal * 0.09
  # end

  # def order_total
  #   subtotal + tax
  # end

end
