class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:show]
  
 def show
   @user = User.find_by(id: params[:id])
   @posts = current_user.posts.order('created_at DESC')
 end
end
