require 'rails_helper'

RSpec.describe 'As a visitor' do 
    describe "When I visit a shelter's show page" do
        it "I can see a link to 'Delete Shelter' " do  
            shelter_1 = Shelter.create!(name: "Dumb Friends League", address: "123 Sample St", city: "Denver", state: "CO", zip: 80220)
            shelter_2 = Shelter.create!(name: "Smart Friends League", address: "456 Sample St", city: "Denver", state: "CO", zip: 80220)

            visit shelter_path(shelter_1)

            expect(page).to have_content(shelter_1.name)
            expect(page).to have_link("Delete Shelter")
           
            click_link "Delete Shelter"

            expect(current_path).to eq(shelters_path) 
            expect(page).to_not have_content(shelter_1.name)
            expect(page).to have_content(shelter_2.name)   
        end
    end
end
