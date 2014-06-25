# Delivery app

App created with ruby on rails as an exercise for models, associations and validation. It models a delivery app for a restaurant which has orders, and items purchased in the orders (that are meals)
Run `db:seed` to insert all seed data into de database.

## About the code

There are four models in the app: **Order**, **Item**, **Meal** and **Notes**.
Orders and Meals have a _has many through_ association with each other via Items. Notes are can be written in meals, specific order items and in orders, which is a polymorphic association. Also, there is a query scope of **vegetarian** for meals.

## To Do

Tests for all custom methods and validations.
