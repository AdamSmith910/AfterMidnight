Rails.application.routes.draw do
  get 'sessions/create', as: 'new_session', to: 'sessions#create'
  get 'users/new', as: 'new_users', to: 'users#new'
  get 'users/edit', as: 'edit_users', to: 'users#edit'
  get 'users/show', as: 'show_users', to: 'users#show'
  get 'welcome/about', as: 'about', to: 'welcome#about'
  get 'welcome/contact'

  root 'welcome#about'
end
