# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

david = User.create(name: "David Chang", email: "david@momofuku.com", password: "momo")
christina = User.create(name: "Christina Tosi", email: "christina@milk.com", password: "milk")

momofuku = Restaurant.create(name: "Momofuku", cuisine: "Asian", address: "3708 Las Vegas Boulevard, South Las Vegas, NV 89109", phone_number: 7026982663, hours: "Lunch: Daily  |  11 am – 3 pm, Dinner: Daily  |  5:30 pm – 11 pm", user_id: david.id)

majordomo = Restaurant.create(name: "majordōmo", cuisine: "California cuisine inspired by the different food cultures present in Los Angeles", address: "1725 Naud St., Los Angeles, CA, 90012", phone_number: 3235454880, hours: "Dinner: Sunday – Thursday | 5:30 – 10, Friday + Saturday | 5:30 – 11; Lunch: Saturday + Sunday | 11:30 – 2", user_id: david.id)

kojin = Restaurant.create(name: "Kōjin", cuisine: "Colombian", address: "190 University Ave Fl 3, Toronto, ON M5H 0A3, Canada", phone_number: 6472536227, hours: "Lunch: Monday – Friday | 11:30 am – 2 pm; Dinner: Sunday – Wednesday | 5:00 pm – 10 pm, Thursday – Saturday | 5:00 pm – 11 pm", user_id: david.id)

milk = Restaurant.create(name: "Milk Bar", cuisine: "Dessert, Bakery", address: "7150 Melrose Ave, Los Angeles, CA 90046", phone_number: 2133418423, hours: "Mon-Thur: 10am - 12am, Fri-Sat: 10 am - 1 am, Sun: 10 am - 12 am", user_id: christina.id)

momofuku_dinner = Menu.create(name: "Dinner", description: "5:30 pm – 11 pm", restaurant_id: momofuku.id)

majordomo_drink = Menu.create(name: "Drink", restaurant_id: majordomo.id)

kojin_lunch = Menu.create(name: "Lunch", description: "menu changes daily", restaurant_id: kojin.id)

raw_bar = Category.create(name: "Raw Bar")
small_plates = Category.create(name: "Small Plates")
seafood = Category.create(name: "Seafood")
meat = Category.create(name: "Meat")
appetizers = Category.create(name: "Appetizers")
cocktails = Category.create(name: "Cocktails")

Item.create(name: "Oysters on the Half Shell", description: "dashi mignonette, shallot, lemon | half dozen", image: "https://images.unsplash.com/photo-1533777977055-64856abacf89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", price: 28, menu_id: momofuku_dinner.id, category_id: raw_bar.id)
Item.create(name: "Striped Bass Crudo", description: "avocado, cucumber, turnip", image: "https://images.unsplash.com/photo-1559737558-2f5a35f4523b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80", price: 22, menu_id: momofuku_dinner.id, category_id: raw_bar.id)
Item.create(name: "Spicy Cucumbers", description: "togarashi, toasted almond", image: "", price: 9, menu_id: momofuku_dinner.id, category_id: small_plates.id)
Item.create(name: "Pork Belly Bun", description: "hoisin, scallion, cucumber", image: "", price: 14, menu_id: momofuku_dinner.id, category_id: small_plates.id)
Item.create(name: "Grilled Japanese Squid", description: "togarashi, lemon, smoked trout roe", image: "", price: 28, menu_id: momofuku_dinner.id, category_id: seafood.id)
Item.create(name: "Miso Sea Bass", description: "crab butter, mushroom, roasted vegetable broth", image: "", price: 54, menu_id: momofuku_dinner.id, category_id: seafood.id)
Item.create(name: "Heritage Pork Chop", description: "watercress, crispy shallot, horseradish", image: "", price: 49, menu_id: momofuku_dinner.id, category_id: meat.id)
Item.create(name: "Grilled A5 Hokkaido Wagyu", description: "morels, onion dashi, kanzuri", image: "https://images.unsplash.com/photo-1504973960431-1c467e159aa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", price: 48, menu_id: momofuku_dinner.id, category_id: meat.id)

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

momofuku_wine = Menu.create(name: "Wine", description: "Wine by the Glass (5oz)", restaurant_id: momofuku.id)

bubbles = Category.create(name: "Bubbles")
white = Category.create(name: "White")
rose = Category.create(name: "Rosé")
red = Category.create(name: "Red")

Item.create(name: "Prosecco Bisol Jeio", description: "Veneto, Italy", image: "", price: 15, menu_id: momofuku_wine.id, category_id: bubbles.id)
Item.create(name: "Spritz Ramona Ruby Grapefruit", description: "Italy", image: "", price: 16, menu_id: momofuku_wine.id, category_id: bubbles.id)
Item.create(name: "Champagne Taittinger Brut La Francaise", description: "France", image: "", price: 29, menu_id: momofuku_wine.id, category_id: bubbles.id)
Item.create(name: "Pinot Gris Ponzi", description: "Willamette Valley, Oregon", image: "", price: 15, menu_id: momofuku_wine.id, category_id: white.id)
Item.create(name: "Sauvignon Blanc Domaine Chevreau", description: "Sancerre, France", image: "", price: 19, menu_id: momofuku_wine.id, category_id: white.id)
Item.create(name: "Pinot Noir Bassermann-Jordan", description: "Pfalz, Germany", image: "", price: 15, menu_id: momofuku_wine.id, category_id: rose.id)
Item.create(name: "Sangiovese La Gerla Rosso di Montalcino", description: "Italy", image: "", price: 18, menu_id: momofuku_wine.id, category_id: red.id)
Item.create(name: "Malbec Ernesto Catena Siesta", description: "Mendoza, Argentina", image: "", price: 18, menu_id: momofuku_wine.id, category_id: red.id)
Item.create(name: "Cabernet Sauvignon Freemark Abbey", description: "Napa Valley, California", image: "", price: 28, menu_id: momofuku_wine.id, category_id: red.id)