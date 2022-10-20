Rails.application.routes.draw do
  resources :names
  # do
    # collection do
    #   get "search"
    # end
  # end

  resources :educators
  # do
  #   collection do
  #     get "search"
  #   end
  # end

  get "about", to: "about#index", as: "about"

  root to: "names#index"
end
