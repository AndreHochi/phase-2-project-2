# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Itemorderjoiner.destroy_all
User.destroy_all
Order.destroy_all
Location.destroy_all

l1 = Location.create(name: "North Austin", address: "1700 N Lamar")
l2 = Location.create(name: "Downtown Austin", address: "120 6th Street")
l3 = Location.create(name: "East Houston", address: "2452 East Street")
l4 = Location.create(name: "West Houston", address: "3523 West Blvd")

u1 = User.create(username: "Brian", password: "rails", reward_points: 70, balance: 35.50)
u2 = User.create(username: "Andre", password: "ruby", reward_points: 150, balance: 15.25)
u3 = User.create(username: "Hadi", password: "sql", reward_points: 35, balance: 7.00)
u4 = User.create(username: "Triston", password: "shredded", reward_points: 50, balance: 24.00)

i1 = Item.create(name: "The Andre Burger", price: 4, ingredients: "White bun, 2 smashed beef patties, american cheese, ketchup, tomato, onion, secret sauce, lettuce", calories: 500)
i2 = Item.create(name: "The Brye Burger", price: 4, ingredients: "Whole wheat bun, half pound beef, pepperjack cheese, ketchup, tomato, onion, pickles", calories: 500)
i3 = Item.create(name: "The Classic Burger", price: 3.50, ingredients: "White bun, half pound beef, lettuce, pickles, onion, tomato, ketchup" , calories: 400)
i4 = Item.create(name: "French Fries", price: 2, ingredients: "Po-ta-toes and hella salt", calories: 300)
i5 = Item.create(name: "Coke", price: 1.50, ingredients: "High fructose corn syrup and water", calories: 150 )
i6 = Item.create(name: "Dr. Pepper", price: 1.50, ingredients: "High fructose corn syrup and water", calories: 150)
i7 = Item.create(name: "Chicken tendies", price: 3.50, ingredients: "Chicken byproduct", calories: 400)

o1 = Order.create(user_id: u1.id, location_id: l1.id)
o2 = Order.create(user_id: u1.id, location_id: l2.id)
o3 = Order.create(user_id: u2.id, location_id: l3.id)
o4 = Order.create(user_id: u2.id, location_id: l4.id)
o5 = Order.create(user_id: u3.id, location_id: l2.id)
o6 = Order.create(user_id: u4.id, location_id: l3.id)

ioj1 = Itemorderjoiner.create(item_id: i2.id, order_id: o1.id)
ioj2 = Itemorderjoiner.create(item_id: i4.id, order_id: o1.id)
ioj3 = Itemorderjoiner.create(item_id: i6.id, order_id: o1.id)
ioj4 = Itemorderjoiner.create(item_id: i1.id, order_id: o3.id)
ioj5 = Itemorderjoiner.create(item_id: i4.id, order_id: o3.id)
ioj6 = Itemorderjoiner.create(item_id: i5.id, order_id: o3.id)
ioj7 = Itemorderjoiner.create(item_id: i4.id, order_id: o2.id)
ioj8 = Itemorderjoiner.create(item_id: i3.id, order_id: o4.id)
ioj9 = Itemorderjoiner.create(item_id: i3.id, order_id: o5.id)
ioj10 = Itemorderjoiner.create(item_id: i4.id, order_id: o5.id)
ioj11 = Itemorderjoiner.create(item_id: i7.id, order_id: o6.id)
ioj12 = Itemorderjoiner.create(item_id: i6.id, order_id: o6.id)
