require 'rails_helper'

RSpec.describe 'As a visitor' do 
    describe "'When I visit '/shelters'" do
        it 'then I see the name of each shelter in the system' do 
            shelter_1 = Shelter.create!(name: "Dumb Friends League", address: "123 Sample St", city: "Denver", state: "CO", zip: 80220)
            shelter_2 = Shelter.create!(name: "Smart Friends League", address: "456 Sample St", city: "Denver", state: "CO", zip: 80220)

            visit "/shelters"
            expect(route).to eq("/shelters")

            expect(page).to have_content(shelter_1.name)
            expect(page).to have_content(shelter_2.name)
        end
    end
end