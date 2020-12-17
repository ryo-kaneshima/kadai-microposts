class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'いいねしました。'
    redirect_to user
  end

  def destroy
    maicropost = Maicropost.find(params[:micropost_id])
    current_user.unfavorite(maicropost)
    flash[:success] = 'いいねを解除しました。'
    redirect_to user
  end
end