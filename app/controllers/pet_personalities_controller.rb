class PetPersonalitiesController < ApplicationController

  def create
    pet_personality = PetPersonality.new(personality_params)
    pet_personality.save
    redirect_to pet_path(current_owner.pet)
  end

  def update
  end

  private
  def personality_params
    params.require(:pet_personality).permit(:personality)
  end
end
