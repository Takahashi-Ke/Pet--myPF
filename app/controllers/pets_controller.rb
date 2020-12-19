class PetsController < ApplicationController

  def show
    @pet = Pet.find_by(id: current_owner.pet)
    @personalities = @pet.pet_personalities
  end

  def edit
    @pet = Pet.find(params[:id])
    @personalities = @pet.pet_personalities
  end

end