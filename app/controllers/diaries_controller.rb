class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.pet = Pet.find(params[:pet_id])
    if @diary.save
      redirect_to request.referer
    else
      @pet = @diary.pet
      @personalities = @pet.pet_personalities
      @diaries = @pet.diaries
      render 'pets/show'
    end
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
