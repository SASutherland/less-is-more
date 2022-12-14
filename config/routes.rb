Rails.application.routes.draw do
  get 'rails/c'
  devise_for :users
  root to: "pages#home"
  get '/survey', to: "pages#survey"
  get '/results', to: "pages#results"
  get '/search', to: "pages#search"
  get '/about', to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :ideas, except: :destroy do
    collection do
      get 'my-ideas'
    end
    resources :favourites, only: :create
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :favourites, only: [:index, :destroy]
  resources :donations, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
