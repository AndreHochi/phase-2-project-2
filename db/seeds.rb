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

u1 = User.create(username: "Brian", password: "rails", reward_points: 70, balance: 35.50, profile_picture: "https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fbamahammer.com%2Fwp-content%2Fuploads%2Fimagn-images%2F2017%2F07%2F15140532.jpeg")
u2 = User.create(username: "Andre", password: "ruby", reward_points: 150, balance: 15.25, profile_picture: "https://m.media-amazon.com/images/I/61BBPX8VzYL._AC_SX569._SX._UX._SY._UY_.jpg")
u3 = User.create(username: "Hadi", password: "sql", reward_points: 35, balance: 7.00, profile_picture: "https://lh3.googleusercontent.com/proxy/23Rb91Rv489FbJztRb69p7wUTqItWdh6Y4JsRy0zW5iwBbQLWWzBHgqerKtOa6_VBVDljfULYdVU-IqK51x4PsEkVFKpzvjJusDLZ37sy--aommeMb2SF4_vL4aPUzyGc81YQg")
u4 = User.create(username: "Triston", password: "shredded", reward_points: 50, balance: 24.00, profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdseHyCG9f9xWft-IykrBSppGOOMkVWf5HIQ&usqp=CAU")

i1 = Item.create(name: "The Andre Burger", price: 4, ingredients: "White bun, 2 smashed beef patties, american cheese, ketchup, tomato, onion, secret sauce, lettuce", calories: 500, picture_url: "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg")
i2 = Item.create(name: "The Brye Burger", price: 4, ingredients: "Whole wheat bun, half pound beef, pepperjack cheese, ketchup, tomato, onion, pickles", calories: 500, picture_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/6/1/2/FNM_070112-Copy-That-Almost-Famous-Animal-Style-Burger-Recipe_s4x3.jpg.rend.hgtvcom.406.305.suffix/1382541460839.jpeg")
i3 = Item.create(name: "The Classic Burger", price: 3.50, ingredients: "White bun, half pound beef, lettuce, pickles, onion, tomato, ketchup" , calories: 400, picture_url: "https://hhp-blog.s3.amazonaws.com/2019/07/burger.jpg")
i4 = Item.create(name: "French Fries", price: 2, ingredients: "Po-ta-toes and hella salt", calories: 300, picture_url: "https://static.toiimg.com/thumb/54659021.cms?width=1200&height=900")
i5 = Item.create(name: "Coke", price: 1.50, ingredients: "High fructose corn syrup and water", calories: 150, picture_url: "https://www.zdnet.com/a/hub/i/r/2020/06/09/2eacd230-d144-4224-9e64-aa012e900877/resize/1200x900/1e8024904299314d9378f958f86e920c/coca-cola-coke-coca-cola.jpg")
i6 = Item.create(name: "Dr. Pepper", price: 1.50, ingredients: "High fructose corn syrup and water", calories: 150, picture_url: "https://i0.wp.com/www.eatthis.com/wp-content/uploads/2018/12/dr-pepper-ice.jpg?fit=1200%2C879&ssl=1")
i7 = Item.create(name: "Chicken tendies", price: 3.50, ingredients: "Chicken byproduct", calories: 400, picture_url: "https://i.pinimg.com/originals/58/3b/cb/583bcb340f4d36a7c11da96122075068.jpg")

o1 = Order.create(user_id: u1.id, location_id: l1.id, paid_for: true)
o2 = Order.create(user_id: u1.id, location_id: l2.id, paid_for: true)
o3 = Order.create(user_id: u2.id, location_id: l3.id, paid_for: true)
o4 = Order.create(user_id: u2.id, location_id: l4.id, paid_for: true)
o5 = Order.create(user_id: u3.id, location_id: l2.id, paid_for: true)
o6 = Order.create(user_id: u4.id, location_id: l3.id, paid_for: true)

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
