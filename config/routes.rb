Rails.application.routes.draw do
  get "home/index"
  resource :registration, only: %i[new create]
  resource :session
  resources :passwords, param: :token

  root "home#index"
end