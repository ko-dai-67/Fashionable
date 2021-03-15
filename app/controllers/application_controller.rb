class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception 
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected  
  
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
   end
   
   def counts(user)
     @count_posts = user.posts.count
     @count_likes = user.likes.count
     @count_followings = user.followings.count
     @count_followers = user.followers.count
   end
end
