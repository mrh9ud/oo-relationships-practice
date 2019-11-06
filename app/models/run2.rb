require_relative 'bakery.rb'
require_relative 'dessert.rb'
require_relative 'ingredient.rb'
require 'pry'

butter = Ingredient.new("Butter", 250)
egg = Ingredient.new("Egg", 70)
flour = Ingredient.new("Flour", 120)
nuts = Ingredient.new("Pecans", 190)


bagel = Dessert.new("Cinnamon Bagel", [butter, flour])
cheesecake = Dessert.new("Cheesecake", [egg, butter])
cupcake = Dessert.new("Cupcake", [flour, nuts])
parfait = Dessert.new("Yogurt Parfait", [nuts, butter])
bagel2 = Dessert.new("Raisin Bagel", [butter, flour])

bodo = Bakery.new("Bodo's Bagels", [bagel, bagel2])
cosi = Bakery.new("Cosi's", [parfait, cheesecake])
albemarle = Bakery.new("Albemarle Baking Co.", [bagel2 ,cupcake])
starbucks = Bakery.new("Starbucks", [cheesecake, bagel])

# print Bakery.all
# print Dessert.all
# print Ingredient.all
# print butter.dessert
# print bagel
# print bodo.dessert.ingredient
# print bagel.calories
# print bodo.shopping_list
# print bodo.ingredients
Ingredient.find_all_by_name("Flour")
binding.pry


