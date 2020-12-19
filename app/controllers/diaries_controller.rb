class DiariesController < ApplicationController

  def create
  end

  def destroy
  end

  private
  def diary_params
    params.require(:diary).permit(:body, :image)
  end

end
