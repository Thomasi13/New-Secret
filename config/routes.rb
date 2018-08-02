Rails.application.routes.draw do

  root to:'static_pages#home'

  resources :users
  resources :sessions , only:[:new, :create]
  
  get 'logout', to: 'sessions#destroy', as:'logout'

  get 'the_secret', to: 'static_pages#show', as: 'secret'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
