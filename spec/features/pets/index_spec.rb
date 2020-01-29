require 'rails_helper'

RSpec.describe "As a visitor" do
  context "When I visit '/pets'" do
    it "Then I see each Pet in the system including the Pet's attributes" do
    shelter_1 = Shelter.create!(name: "Mike's Shelter", address: "1331 17th Street", city: "Denver", state: "CO", zip: 80202)
    shelter_2 = Shelter.create!(name: "Meg's Shelter", address: "50 Main Street", city: "Hershey", state: "PA", zip: 17033)
    
    sparky = Pet.create!(name: 'Sparky', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/west_highland_white_terrier_24.jpg', approximate_age: 5, sex: 'male')
    peppo = Pet.create!(name: 'Peppo', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/mexican_hairless_105.jpg', approximate_age: 13, sex: 'female')
    
    visit pets_path
    expect(current_path).to eq("/pets")

    expect(page).to have_content(sparky.name)
    expect(page).to have_content(peppo.name)

    end
  end
end

