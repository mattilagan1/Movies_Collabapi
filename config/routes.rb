Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  get "/movies" => "movie#index"
  get "/movies/:id" => "movie#show"
  post "/movies" => "movie#create"
  put "/movies/:id" => "movie#update"
  delete "/movies/:id" => "movie#delete"

  get "/reviewers" => "reviewer#index"
  get "/reviewers/:id" => "reviewer#show"
  post "/reviewers" => "reviewer#create"
  put "/reviewers/:id" => "reviewer#update"
  delete "/reviewers/:id" => "reviewer#delete"

  get "/reviews" => "review#index"
  get "/reviews/:id" => "review#show"
  post "/reviews" => "review#create"
  put "/reviews/:id" => "review#update"
  delete "/reviews/:id" => "review#delete"
end
