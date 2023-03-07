Rails.application.routes.draw do
  devise_for :users
  root to: "solutions#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :solutions, only: [:show] do
    resources :favourites, only: [:create]
    resources :experiences, only: [:create]
  end

  resources :favourites, only: [:destroy]
  resources :likes, only: [:destroy]
  resources :experiences, only: [:update, :destroy]

  get "/dashboard", to: "dashboards#my_solutions"
  get "/testing", to: "pages#testing"
end
