class PetsController < ApplicationController 

    def index
        if params[:shelter_id]
            @shelter = Shelter.find(params[:shelter_id])
            @pets = @shelter.pets.all
        else
             @pets = Pet.all
        end
    end
end 