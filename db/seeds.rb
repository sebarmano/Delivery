# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Meal.create(
  name: "salad",
  price: 3) # id = 1

Meal.create(
  name: "chicken",
  price: 5.50) # id = 2

Meal.create(
  name: "mashed potatoes",
  price: 2) # id = 3

Meal.create(
  name: "hamburger",
  price: 6.75) # id = 4

Meal.create(
  name: "fish",
  price: 8.20) # id = 5

Meal.create(
  name: "fries",
  price: 4.50 ) # id = 6

Order.create(
  time: DateTime.now + 1.hour
)

Order.create(
  time: DateTime.now + 2.hours
)

Item.create(
  order_id: 1,
  meal_id: 5,
  quantity: 2
) # id 1

Item.create(
  order_id: 1,
  meal_id: 3,
  quantity: 2
) # id 2

Item.create(
  order_id: 2,
  meal_id: 4,
  quantity: 1
) # id 3

Item.create(
  order_id: 2,
  meal_id: 6,
  quantity: 1
) # id 4

Item.create(
  order_id: 2,
  meal_id: 2,
  quantity: 2
) # id 5

Item.create(
  order_id: 3,
  meal_id: 1,
  quantity: 5
) # id 6

Item.create(
  order_id: 3,
  meal_id: 4,
  quantity: 3
) # id 7

Item.create(
  order_id: 3,
  meal_id: 6,
  quantity: 6
) # id 8

Note.create(
  content: "lettice, tomato and onion",
  notable_id: 1,
  notable_type: "Meal"
)

Note.create(
  content: "can be fried or grilled",
  notable_id: 2,
  notable_type: "Meal"
)

Note.create(
  content: "please without salt",
  notable_id: 1,
  notable_type: "Order"
)

Note.create(
  content: "Mayo and BBQ sauce",
  notable_id: 3,
  notable_type: "Item"
)
