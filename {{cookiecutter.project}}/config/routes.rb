Rails.application.routes.draw do
  root 'courses#index'
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/edit'
  get 'courses/search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search', to: 'courses#search'
  # Defines the root path route ("/")
  # root "articles#index"
end
