# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Delete any existing data before re-seeding the db
require "database_cleaner"

DatabaseCleaner.clean_with(:truncation)

admin = Admin.create(email: "srocks225@aim.com", password: "password123456")

austin = Region.create(city: "Austin", state: "Texas", country: "USA", img_url: "https://images.unsplash.com/photo-1530089711124-9ca31fb9e863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80")
boston = Region.create(city: "Boston", state: "Massachusetts", country: "USA", img_url: "https://images.unsplash.com/photo-1556079337-a837a2d11f04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1674&q=80")

Restaurant.create(
  name: "Titaya Thai",
  description: "A nondescript thai place from the outside that is fantastic. And is great and awesome and super and duper and awesome soiejfaijefiajfiajweflwiflweifjwlifwifjifjawifjwlf.",
  cuisine: "Thai",
  rating: 4,
  region: austin
)

Restaurant.create(
  name: "Maude's TexMex",
  description: "Side of the road joint. Meh.",
  cuisine: "TexMex",
  rating: 2,
  region: austin
)

Restaurant.create(
  name: "Kura Revolving Sushi Bar",
  description: "Revolving sushi on fun plates",
  cuisine: "Japanese",
  rating: 4,
  region: austin
)

Restaurant.create(
  name: "Julie's Noodles",
  description: "The best noodles in Austin.",
  cuisine: "Chinese",
  rating: 5,
  region: austin
)

Restaurant.create(
  name: "Brown Sugar",
  cuisine: "Thai",
  rating: 4,
  region: boston
)
