# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

maru_ichi = Restaurant.create(name: "Maru Ichi", category: "Japanese", street: "368 Castro St", city: "Mountain View", state: "California", zipcode: 94043)
Restaurant.create(name: "Ramen House Ryowa", category: "Japanese", street: "859 Villa St", city: "Mountain View", state: "California", zipcode: 94041)
Restaurant.create(name: "Hangen Szechuan Restaurant", category: "Chinese", street: "134 Castro St", city: "Mountain View", state: "California", zipcode: 94041)
Restaurant.create(name: "Amarin Thai Cuisine", category: "Thai", street: "174 Castro St", city: "Mountain View", state: "California", zipcode: 94041)
Restaurant.create(name: "Gombei Bento", category: "Japanese", street: "155 E Maude Ave", city: "Sunnyvale", state: "California", zipcode: 94085)
Restaurant.create(name: "Pho Mai No 1", category: "Vietnamese", street: "82 S Abel St", city: "Milpitas", state: "California", zipcode: 95035)
Restaurant.create(name: "Amarin Thai Cuisine", category: "Thai", street: "174 Castro St", city: "Mountain View", state: "California", zipcode: 94041)

maru_ichi.dishes.create(name: "Tonkotsu Ramen", category: "Japanese", price: 8.99, rating: 5)
maru_ichi.dishes.create(name: "Kuro Ramen Combo B", category: "Japanese", price: 8.99, rating: 5)

queen_house = Restaurant.create(name: "Queen House Chinese Restaurant", category: "Chinese", street: "273 Castro St", city: "Mountain View", state: "California", zipcode: 94041)
queen_house.dishes.create(name: "Taiwanese Combo Noodle Soup", category: "Chinese", price: 6.59, rating: 1)
queen_house.dishes.create(name: "Szechwan Beef Noodle Soup", category: "Chinese", price: 6.59, rating: 3)
queen_house.dishes.create(name: "Szechwan Beef Tendon Noodle Soup", category: "Chinese", price: 6.59, rating: 4)
queen_house.dishes.create(name: "Szechwan Beef and Tendon Noodle Soup", category: "Chinese", price: 7.59, rating: 5)
queen_house.dishes.create(name: "Mandarin Deluxe Chow Mein", category: "Chinese", price: 7.59, rating: 2)