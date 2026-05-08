Rails.application.routes.draw do
  resources :body_parts, only: %i[show]
  resources :posts,only:%i[new create destroy edit update]
  resources :users
  root "users#index"
  resource :login,only:%i[new create]
  resource :logout,only: :destroy

  resources :welcomes,only: :index
end