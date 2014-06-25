require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "vegetarian includes no meat" do
    meals = Meal.vegetarian.map {|meal| meal.name}

    assert meals.include?("fish")
    refute meals.include?("hamburger")
  end

end
