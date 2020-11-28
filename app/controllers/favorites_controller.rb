class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    #user = User.find(params[:current_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = '投稿をお気に入りにしました。'
    redirect_to users_url
  end

  def destroy
    #user = User.find(params[:current_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to users_url
  end
end
