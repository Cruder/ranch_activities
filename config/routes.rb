Rails.application.routes.draw do
  resources :activities, except: %i(show)
  resources :sessions, except: %i(show)

  root to: 'sessions#index'

  devise_for :users, only: %i[]

  resources :users do
    collection do
      resources :auth, controller: 'authenticates', only: %i[new create destroy]
    end
  end
end
