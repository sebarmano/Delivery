require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "order is able to be delivered after set period" do
    order = Order.new(time: DateTime.now + 10.minutes)
    refute order.valid?
    assert order.errors[:time].any?

    order2 = Order.new(time: DateTime.now + 1.hour)
    assert order.valid?
    refute order.errors.any?
  end

  test "order can calculate total" do
    meal1 = Meal.create(name:"fries", price: 10)
    meal2 = Meal.create(name:"fish", price: 12.50)
    order = Order.create(time: DateTime.now + 1.hour)
    Item.create(meal_id: meal1.id, order_id: order.id, quantity: 1)
    Item.create(meal_id: meal2.id, order_id: order.id, quantity: 1)

    assert_equal 22.50, order.total
  end

end
