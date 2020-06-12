class Order < ApplicationRecord

  belongs_to :product
  belongs_to :user

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
