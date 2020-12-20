class PetsController < ApplicationController

  def show
    @pet = Pet.find_by(id: current_owner.pet)
    @personalities = @pet.pet_personalities
    @diary = Diary.new
    @diaries = @pet.diaries
    @photos  = Diary.where.not(image_id: nil)
  end

  def edit
    @pet = Pet.find(params[:id])
    @personalities = @pet.pet_personalities
  end

  def update
    pet = Pet.find(params[:id])
    current_owner.update(owner_pet_params)
    redirect_to pet_path(pet)
  end

  private
  def owner_pet_params
    params.require(:owner).permit(:name, :image, pet_attributes: [:id, :name, :image, :birthday, :gender, :type, :introduction, :_destroy,
                                      pet_personalities_attributes: [:id, :personality, :_destroy]])
  end

end