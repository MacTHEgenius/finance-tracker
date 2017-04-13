Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "user/registrations" }
  root to: 'welcome#index'
  
  get 'portfolio', to: "users#portfolio"
  get 'friends', to: "users#friends"
  
  get 'search_stocks', to: "stocks#search"
  
  resources :user_stocks, except: [:show, :edit, :update]

end
