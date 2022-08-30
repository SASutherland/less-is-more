Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/survey', to: "pages#survey"
  get '/results', to: "pages#results"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :ideas, except: :destroy do
    collection do
      get 'my-ideas'
    end
    resources :favourites, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :favourites, only: [:index, :destroy]
end
