class Meal < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :price, numericality: { higher_than: 0 }

  has_many :items
  has_many :orders, through: :items
  has_many :notes, as: :notable

  def self.vegetarian
    where(name: ["salad", "mashed potatoes", "fries", "fish"])
  end

end
