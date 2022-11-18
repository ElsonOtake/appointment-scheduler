Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'user#index'

  resources :coach, only: %i[index] do
    resources :schedule, only: %i[index]
  end
end
