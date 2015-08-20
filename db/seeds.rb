# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "lime")
Ingredient.create(name: "white egg")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "koala blood")
Ingredient.create(name: "tomato juice")

Cocktail.destroy_all
Cocktail.create([
  {name: "whisky sour"},
  {name: "bloody mary"},
  {name: "old fashioned"},
  {name: "mojito"},
  ])
