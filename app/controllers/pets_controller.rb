class PetsController < ApplicationController 

    def index
        @Pets = Pet.all
    end
end 