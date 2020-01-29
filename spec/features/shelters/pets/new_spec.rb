require 'rails_helper'
RSpec.describe 'As a visitor' do 
    describe "'When I visit a Shelter Pets Index page" do
        it 'Then I see a link to create a new adoptable pet, "Create Pet" and I am redirected to a new pet form' do 
            shelter_1 = Shelter.create!(name: "Dumb Friends League", address: "123 Sample St", city: "Denver", state: "CO", zip: 80220)
            shelter_2 = Shelter.create!(name: "Smart Friends League", address: "456 Sample St", city: "Denver", state: "CO", zip: 80220)

            visit shelter_pets_path(shelter_1)

            click_link "Create Pet"
            # expect(current_path).to eq(new_pet_path)

            # image = 
            # name = 
            # approximate_age = 
            # sex = 


            # fill_in 'Image', with: image 
            # fill_in 'Name',	with: name 
            # fill_in "Spproximate Age",	with: approximate_age
            # fill_in "Sex",	with: sex

            # click_on "Create Shelter"
            
            # expect(current_path).to eq(shelters_path)
            
            # expect(page).to have_content(name)
        end
    end
end
