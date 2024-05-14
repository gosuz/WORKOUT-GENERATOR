Rails.application.routes.draw do
  devise_for :users

  # As a user, I can see the get started (home page)
  # # As a user I can create a workout plan
  # post "/plans", to: "plans#create"
  # # As a user, I can edit my response to the form (exercise clusters/ 1RM)
  # get "/plans/:id/edit", to: "plans#edit"
  # patch "/plans/:id", to: "plans#update"
  # # As a user, I can view my workout plan
  # get "/plans/:id", to: "plans#show"
  # # As a user, I can delete my workout plan
  # delete "/plans/:id", to: "plans#destroy"
  root to: "pages#home"
  resources :plans, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :exercises, only: [:new, :create, :index, :show, :destroy]do
    resources :weights, onlu: [:new, :create, :index, :show, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
