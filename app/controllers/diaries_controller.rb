class DiariesController < ApplicationController

  def create
    diary = Diary.new(diary_params)
    diary.pet = Pet.find(params[:pet_id])
    diary.save
    # binding.pry
    redirect_to request.referer
  end

  def destroy
    diary = Diary.find(params[:id])
    # binding.pry
    diary.destroy
    redirect_to request.referer
  end

  private
  def diary_params
    params.require(:diary).permit(:body, :image)
  end

end
