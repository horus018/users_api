Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  get "users/name/:name", to: "users#search_by_name"
end
