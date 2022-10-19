Rails.application.routes.draw do
  resources :names
  resources :educators
  get "about", to: "about#index", as: "about"

  root to: "names#index"
end
