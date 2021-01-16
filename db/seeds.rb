# Destroy previous ingredients
Ingredient.destroy_all

# Create seeds
puts "Fetching JSON list"
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

puts "Creating #{user['drinks'].count} ingredients"

user['drinks'].each do |item|
  Ingredient.create!(name: item['strIngredient1'])
  puts item['strIngredient1']
end
puts "finished"
