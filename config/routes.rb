Rails.application.routes.draw do
  root "sessions#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/log_out", to: "sessions#destroy"
  get "/secrets", to: "secrets#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
