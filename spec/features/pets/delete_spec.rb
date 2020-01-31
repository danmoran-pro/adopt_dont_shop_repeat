require 'rails_helper'

RSpec.describe 'As a visitor' do 
    describe "When I visit a Pet's show page" do
        it "I can see a link to 'Delete Pet' " do  
            shelter_1 = Shelter.create!(name: "Dumb Friends League", address: "123 Sample St", city: "Denver", state: "CO", zip: 80220)
            shelter_2 = Shelter.create!(name: "Smart Friends League", address: "456 Sample St", city: "Denver", state: "CO", zip: 80220)
            
            pet_1 = shelter_1.pets.create!(name: 'Sparky', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/west_highland_white_terrier_24.jpg', approximate_age: 5, sex: 'male')
            pet_2  = shelter_2.pets.create!(name: 'Peppo', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/mexican_hairless_105.jpg', approximate_age: 13, sex: 'female')

            visit pet_path(pet_1)

            expect(page).to have_content(pet_1.name)
           
            click_link "Delete Pet"

            expect(current_path).to eq(pets_path) 
            expect(page).to_not have_content(pet_1.name)
            expect(page).to have_content(pet_2.name)   
        end
    end
end
