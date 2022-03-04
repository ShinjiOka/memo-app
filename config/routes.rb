Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to:"memos#index"
  get "/new", to:"memos#new"
  post "/create", to:"memos#create"
  get "/memos/:id", to:"memos#destroy"
  get "/memos/:id/edit", to:"memos#edit"
  post "/memos/:id", to:"memos#update"
  get "/categories/:id", to:"categories#show"
  get "/categories/:id/delete", to:"categories#destroy"
  get "/categories/:id/edit", to:"categories#edit"
  post "/categories/:id", to:"categories#update"
end
