class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:show, :likes, :followings, :followers]
  
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
 
 def followings
   @user = User.find(params[:id])
   @followings = @user.followings
   counts(@user)
 end
 
 def followers
   @user = User.find(params[:id])
   @followers = @user.followers.order('created_at DESC')
   counts(@user)
 end
end
