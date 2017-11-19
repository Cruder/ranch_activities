Rails.application.routes.draw do
  resources :activities, except: %i(show)
  resources :sessions, except: %i(show)

  root to: 'sessions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
