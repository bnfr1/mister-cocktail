# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = {
  name: "rhum",
  name: "lemon",
  name: "vodka",
  name: "lemon",
  name: "ice",
  name: "mint leaves"
}

ingredients.each { |ingredient| Ingredient.create }
