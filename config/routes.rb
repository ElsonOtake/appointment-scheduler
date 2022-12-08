Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  root 'sessions#new'

  resources :users, only: %i[new create] do
    resources :coaches, only: %i[index] do
      resources :schedules, only: %i[index]
    end
  end
end
