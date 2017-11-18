Rails.application.routes.draw do
  resources :activities, except: %i(show)
  resources :sessions, except: %i(show)

  root to: 'sessions#index'

  devise_for :users
end
