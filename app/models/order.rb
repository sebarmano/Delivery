class Order < ActiveRecord::Base
  TIME_TO_DELIVER = 30.minutes
  FREE_DELIVERY = 15

  validates :time, presence: true
  validate :able_to_deliver

  has_many :items
  has_many :meals, through: :items
  has_many :notes, as: :notable


  def able_to_deliver
    if time < DateTime.now + TIME_TO_DELIVER
      errors.add(:not_able_to_deliver, "Delivery time should be at least 30 minutes from now.")
    end
  end

  def total
    meals.map { |meal| meal.price }.reduce(:+)
  end
end
