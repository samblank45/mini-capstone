class Product < ApplicationRecord

  # validates :name, length: {minimum:2}
  # validates :price, presence: true, numericality: {greater_than: 10}
  # validates :description, length: {minimum: 10, maximum: 500}
  

  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
    tax 
  end

  def total
    tax + price
  end

  belongs_to :supplier
  
  has_many :images
end
