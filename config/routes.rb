Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/", to: "projects#index", as: "root"
  # Defines the root path route ("/")
  # root "articles#index"
  match '*unmatched', to: 'application#not_found_method', via: :all
end
