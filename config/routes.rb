Rails.application.routes.draw do

  get 'results', to: 'search#results'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users

  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  
  get 'users/show', as: 'show_users', to: 'users#show'
  get 'welcome/about', as: 'about', to: 'welcome#about'
  get 'welcome/main', as: 'main', to: 'welcome#main'
  get 'welcome/contact'

  root 'welcome#main'
end
