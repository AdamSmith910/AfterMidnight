Rails.application.routes.draw do

  resources :users


  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  
  get 'users/show', as: 'show_users', to: 'users#show'
  get 'welcome/about', as: 'about', to: 'welcome#about'
  get 'welcome/main', as: 'main', to: 'welcome#main'
  get 'welcome/contact'

  root 'welcome#main'
end
