Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/favorites/" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  get "/reviews" => "reviews#index"
  post "/reviews" => "reviews#create"
  # Defines the root path route ("/")
  # root "posts#index"
end
