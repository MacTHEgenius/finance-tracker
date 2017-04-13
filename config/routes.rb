Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "user/registrations" }
  root to: 'welcome#index'
  
  get 'portfolio', to: "users#portfolio"
  get 'friends', to: "users#friends"
  
  get 'search_stocks', to: "stocks#search"
  
  get 'search_friends', to: "users#search"
  post 'add_friend', to: "users#add_friend"
  
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: :show
  resources :friendships 

end
