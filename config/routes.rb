Rails.application.routes.draw do
  devise_for :users,
   controllers: { registrations: 'registrations' }
   
  root 'posts#index'
  
  
  resources :users, only: [:show] do
   member do
   get :likes
   end
  end
  
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
   resources :photos, only: [:create]
   resources :likes, only: [:create, :destroy]
   resources :comments, only: [:create, :destroy]
  end
end
