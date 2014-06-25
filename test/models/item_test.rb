require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "quantity should be at least 1" do
    Order.create(time: DateTime.now + 2.hours)
    item = Item.new(meal_id: 1, order_id: 1, quantity: 0)
    refute item.valid?
    assert item.errors[:quantity].any?
  end
end
