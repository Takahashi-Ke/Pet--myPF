class DiaryFavoritesController < ApplicationController

  def create
    diary = Diary.find(params[:diary_id])
    pet = current_owner.pet
    favorite = pet.diary_favorites.new(diary_id: diary.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    diary = Diary.find(params[:diary_id])
    pet = current_owner.pet
    favorite = pet.diary_favorites.find_by(diary_id: diary.id)
    favorite.destroy
    redirect_to request.referer
  end

end
