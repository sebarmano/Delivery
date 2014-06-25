class Meal < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :price, numericality: { higher_than: 0 }

  has_many :items
  has_many :orders, through: :items
end
