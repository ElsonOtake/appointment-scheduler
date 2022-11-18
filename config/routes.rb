Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i[index show create] do
    resources :coaches, only: %i[index] do
      resources :schedules, only: %i[index]
    end
  end
end
