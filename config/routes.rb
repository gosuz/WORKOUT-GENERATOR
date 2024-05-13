Rails.application.routes.draw do
  devise_for :users

  # As a user, I can see the get started (home page)
  root to: "pages#home"

  # As a user I can create a workout plan
  # As a user, I can edit my response to the form (exercise clusters/ 1RM)
  # As a user, I can view my workout plan
  # As a user, I can delete my workout plan


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
