class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all 
  end

  def show 
    @shelter = Shelter.find(params[:id])
  end
  
  def new
    @shelter = Shelter.new
  end 

  def create
    @shelter = Shelter.create(shelter_params)
    @shelter.save
    redirect_to shelters_path
  end 

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update_attributes(shelter_params)
    @shelter.save

    redirect_to shelter_path
  end
  
  

  private
    def shelter_params
      params.require(:shelter).permit(:name, :address, :city, :state, :zip)
    end 
end 