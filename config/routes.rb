Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[create]
  end

  resources :reviews, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
