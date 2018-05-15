Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all tasks
  get "/tasks", to: "tasks#index"
  # # Create one task (2 requests)
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  # # Read one task
  get "/tasks/:id", to: "tasks#show", as: "task"
  # # Update one task
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "/tasks/:id", to: "tasks#update"
  # # Delete one task
  delete "/tasks/:id", to: "tasks#destroy"
end
