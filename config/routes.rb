Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/survey', to: "survey#index", as: :survey
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :ideas do
    resources :favourites
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
