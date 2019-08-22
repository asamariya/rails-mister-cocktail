Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "Starting to creat cocktails"

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "vodka")
Ingredient.create!(name: "whiskey")
Ingredient.create!(name: "milk")


Cocktail.create!(name: "Mint Julep", )
Cocktail.create!(name: "Whiskey Sour")
Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Negroni")

# byebug
Dose.create!(description: "2cl", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient.first.id)
Dose.create!(description: "2cl", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient.last.id)
Dose.create!(description: "3cl", cocktail_id: Cocktail.find_by(name: "Whiskey Sour").id, ingredient_id: Ingredient.find_by(name: 'mint leaves').id)
Dose.create!(description: "6cl", cocktail_id: Cocktail.last.id, ingredient_id: Ingredient.last.id)
Dose.create!(description: "9cl", cocktail_id: Cocktail.find_by(name: "Mojito").id, ingredient_id: Ingredient.find_by(name: "ice").id)

puts "Finished, enjoy! #{Ingredient.count}, #{Cocktail.count}, #{Dose.count}"
