class DiaryCommentsController < ApplicationController

  def create
    diary_comment = DiaryComment.new(comment_params)
    diary_comment.pet_id = params[:pet_id]
    diary_comment.diary_id = params[:diary_id]
    diary_comment.save
    redirect_to request.referer
  end

  def destroy
    diary_comment = DiaryComment.find(params[:id])
    diary_comment.destroy
    redirect_to request.referer
  end

  private
  def comment_params
    params.require(:diary_comment).permit(:comment)
  end

end
