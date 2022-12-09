Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  root 'sessions#new'

  resources :clients, only: %i[new create] do
    resources :coaches, only: %i[index] do
      resources :schedules, only: %i[index] do
        post :booking
      end
    end
  end
end
