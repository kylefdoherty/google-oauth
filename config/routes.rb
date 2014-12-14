Rails.application.routes.draw do
  root "pages#homepage"

  resources :users do
    resources :posts
  end

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  post "/signout", to: "sessions#destroy"

end
