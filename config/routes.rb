Rails.application.routes.draw do
  devise_for :users
  resources :task_lists do
  resources :task_items, only: [ :create, :update, :destroy ]
end

  # Defines the root path route ("/")
  root "task_lists#index"
end
