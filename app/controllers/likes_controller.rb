class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost = Micropost.find(params[:micropost_id])
    return if @micropost.good?(current_user)

    @micropost.good(current_user)
    @micropost.reload
    respond_to do |format|
      format.html { redirect_to request.referer || root_url }
      format.js
    end
  end

  def destroy
    @micropost = Like.find(params[:id]).micropost
    return unless @micropost.good?(current_user)

    @micropost.ungood(current_user)
    @micropost.reload
    respond_to do |format|
      format.html { redirect_to request.referer || root_url }
      format.js
    end
  end
end
