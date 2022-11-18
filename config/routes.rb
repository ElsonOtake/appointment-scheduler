Rails.application.routes.draw do
  get 'schedule/index'
  get 'coach/index'
  get 'user/index'
  get 'user/show'
  get 'user/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'user#index'
end
