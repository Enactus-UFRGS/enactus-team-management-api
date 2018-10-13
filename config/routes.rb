Rails.application.routes.draw do
  get 'teams/show'

  resources :teams

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
