Rails.application.routes.draw do
  get 'sessions/create'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'welcome/about'
  get 'welcome/contact'

  root "welcome#about"
end
