class Product < ApplicationRecord


  def is_discounted?
    discount = ""
    if price > 10
      true
    else
      false
    end
  end

  def tax
    tax = price * 0.09
    tax 
  end

  def total
    total_price = tax + price
    total_price
  end

end
