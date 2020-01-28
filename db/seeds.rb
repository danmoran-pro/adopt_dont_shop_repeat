# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#shelters 
shelter_3 = Shelter.create!(name: "Mike's Shelter", address: "1331 17th Street", city: "Denver", state: "CO", zip: 80202)
shelter_4 = Shelter.create!(name: "Meg's Shelter", address: "50 Main Street", city: "Hershey", state: "PA", zip: 17033)
shelter_1 = Shelter.create!(name: "Dumb Friends League", address: "123 Sample St", city: "Denver", state: "CO", zip: 80220)
shelter_2 = Shelter.create!(name: "Smart Friends League", address: "456 Sample St", city: "Denver", state: "CO", zip: 80220)

#shelter_3 pets 
# athena = shelter_2.create!(name: "Athena", approximate_age: 1, sex: "female", description: "butthead")

# #shelter_4 pets 
# athena = shelter_2.create!(name: "Odell", approximate_age: 4, sex: "male", description: "good dog")
