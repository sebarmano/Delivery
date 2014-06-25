class Item < ActiveRecord::Base
  validates :meal, :order, :quantity, presence: true
  validates :quantity, numericality: {
                          only_integer: true,
                          higher_or_equal_to: 1 } 

  belongs_to :meal
  belongs_to :order
end
