class Order < ActiveRecord::Base
  TIME_TO_DELIVER = 30.minutes
  FREE_DELIVERY = 15

  validates :time, presence: true
  # validates :delivery_time

  has_many :items
  has_many :meals, through: :items


  # def delivery_time
  # def total


end
