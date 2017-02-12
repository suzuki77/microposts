class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
  end
  
  # def page
  #   @microposts =  @micropost.page(params[:page]).per(5)
  # end
end
