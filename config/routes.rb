Rails.application.routes.draw do

  devise_for :users
  root to: 'welcome#index'
  
  get 'portfolio', to: "users#portfolio"
  
  get 'search_stocks', to: "stocks#search"
  
  resources :user_stocks, except: [:show, :edit, :update]

end
