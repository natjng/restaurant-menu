# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# - clear db first!

gordon = User.create(name: "Gordon Ramsay", email: "gordon@masterchef.com", password: "masterchef")
david = User.create(name: "David Chang", email: "david@momofuku.com", password: "momo")
christina = User.create(name: "Christina Tosi", email: "christina@milk.com", password: "milk")

# burger = Restaurant.create(name: "Burger", cuisine: "", address: "", phone_number: , hours: "", user_id: gordon.id)
# = Restaurant.create(name: "Burger", cuisine: "", address: "", phone_number: , hours: "", user_id: gordon.id)
# = Restaurant.create(name: "Burger", cuisine: "", address: "", phone_number: , hours: "", user_id: gordon.id)

# momofuku = Restaurant.create(name: "Momofuku", cuisine: "", address: "", phone_number: , hours: "", user_id: david.id)

# starter = Menu.create(name: "", description: "", restaurant_id: burger.id)
# starter = Menu.create(name: "", description: "", restaurant_id: .id)
# starter = Menu.create(name: "", description: "", restaurant_id: .id)
# starter = Menu.create(name: "", description: "", restaurant_id: .id)

# kitchen = Category.create(name: "")
# kitchen = Category.create(name: "")
# kitchen = Category.create(name: "")
# kitchen = Category.create(name: "")

momofuku = Restaurant.create(name: "Momofuku", cuisine: "Asian", address: "The Cosmopolitan of Las Vegas Level 2, Boulevard Tower, 3708 Las Vegas Boulevard South Las Vegas, NV 89109", phone_number: 7026982663, hours: "Lunch: Daily  |  11 am – 3 pm, Afternoon at Peach Bar: Daily  |  3 pm – 5:30 pm, Dinner: Daily  |  5:30 pm – 11 pm, Late Night at Peach Bar: Sunday – Thursday  |  11 pm – 12 am & Friday – Saturday  |  11 pm – 1 am", user_id: david.id)

milk = Restaurant.create(name: "Milk Bar", cuisine: "Dessert, Bakery", address: "7150 Melrose Ave, Los Angeles, CA 90046", phone_number: 2133418423, hours: "Mon-Thur: 10am - 12am, Fri-Sat: 10 am - 1 am, Sun: 10 am - 12 am", user_id: christina.id)

momofuku_dinner = Menu.create(name: "Dinner", description: "5:30 pm – 11 pm", restaurant_id: momofuku.id)

raw_bar = Category.create(name: "Raw Bar")
small_plates = Category.create(name: "Small Plates")
seafood = Category.create(name: "Seafood")
meat = Category.create(name: "Meat")

Item.create(name: "Oysters on the Half Shell", description: "dashi mignonette, shallot, lemon | half dozen", image: "", price: 28, menu_id: momofuku_dinner.id, category_id: raw_bar.id)
Item.create(name: "Striped Bass Crudo", description: "avocado, cucumber, turnip", image: "", price: 22, menu_id: momofuku_dinner.id, category_id: raw_bar.id)
Item.create(name: "Spicy Cucumbers", description: "togarashi, toasted almond", image: "", price: 9, menu_id: momofuku_dinner.id, category_id: small_plates.id)
Item.create(name: "Pork Belly Bun", description: "hoisin, scallion, cucumber", image: "", price: 14, menu_id: momofuku_dinner.id, category_id: small_plates.id)
Item.create(name: "Grilled Japanese Squid", description: "togarashi, lemon, smoked trout roe", image: "", price: 28, menu_id: momofuku_dinner.id, category_id: seafood.id)
Item.create(name: "Miso Sea Bass", description: "crab butter, mushroom, roasted vegetable broth", image: "", price: 54, menu_id: momofuku_dinner.id, category_id: seafood.id)
Item.create(name: "Heritage Pork Chop", description: "watercress, crispy shallot, horseradish", image: "", price: 49, menu_id: momofuku_dinner.id, category_id: meat.id)
Item.create(name: "Grilled A5 Hokkaido Wagyu", description: "morels, onion dashi, kanzuri", image: "", price: 48, menu_id: momofuku_dinner.id, category_id: meat.id)

melrose = Menu.create(name: "Milk Bar Flapship Melrose", description: "", restaurant_id: milk.id)

soft_serve = Category.create(name: "Soft Serve")
cookies = Category.create(name: "Cookies")
truffles = Category.create(name: "Truffles")

Item.create(name: "Cereal Milk", description: "Made with milk, cornflakes, brown sugar, and a pinch of salt, it tastes just like the milk at the bottom of a bowl of cornflakes!", image: "", menu_id: melrose.id, category_id: soft_serve.id)
Item.create(name: "Compost Cookie", description: "We swirled our kitchen-sink cookie into this silky smooth creation, and we can't stop sneaking samples.", image: "", menu_id: melrose.id, category_id: soft_serve.id)
Item.create(name: "Best Freaking Cookie", description: "A rich and fudgy chocolate cookie, packed with dark chocolate chips and sweetened with just coconut and pineapple.", image: "", menu_id: melrose.id, category_id: cookies.id)
Item.create(name: "Chocolate-Chocolate Cookie", description: "Chocolate cookie dough, chocolate crumbs and a hint of salt makes this dense and fudgy cookie taste just like a very chocolatey brownie!", image: "", menu_id: melrose.id, category_id: cookies.id)
Item.create(name: "Cornflake Marshmallow Cookie", description: "Cornflakes, marshmallows, mini chocolate chips.", image: "", menu_id: melrose.id, category_id: cookies.id)
Item.create(name: "Perfect 10 Cookie", description: "Gluten-free Cookie with oats, almonds, mini chocolate chips, sweetened with agave.", image: "", menu_id: melrose.id, category_id: cookies.id)
Item.create(name: "B'Day Truffles", description: "Vanilla rainbow cake, vanilla infused milk, white chocolate, rainbow cake crumbs. Available in packs of 3.", image: "", menu_id: melrose.id, category_id: truffles.id)
Item.create(name: "Chocolate B'Day Truffles", description: "Bite-sized fudgy-cake morsels, loaded with chocolate chips and rainbow sprinkles. Available in packs of 3.", image: "", menu_id: melrose.id, category_id: truffles.id)