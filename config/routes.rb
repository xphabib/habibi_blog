Rails.application.routes.draw do
  get '/bloggers', to: 'users#index', as: :bloggers
  get '/bloggers/:id', to: 'users#show', as: :blogger
  get '/profile', to: 'users#profile', as: :profile

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'home/index'
  get '/dashboard', to: 'home#dashboard', as: :dashboard
  root to: "home#index"
end
