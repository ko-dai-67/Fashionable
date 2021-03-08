class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:show, :likes]
  
 def show
   @user = User.find(params[:id])
   @posts = @user.posts.order('created_at DESC')
   counts(@user)
 end
 
 def likes
   @user = User.find(params[:id])
   @likeposts = @user.likeposts.order('created_at DESC')
   counts(@user)
 end
end
