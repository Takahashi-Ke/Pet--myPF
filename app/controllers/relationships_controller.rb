class RelationshipsController < ApplicationController

  def create
    current_owner.pet.follow(params[:pet_id])
    redirect_to request.referer
  end

  def destroy
    current_owner.pet.unfollow(params[:pet_id])
    redirect_to request.referer
  end

end
