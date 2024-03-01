Rails.application.routes.draw do
  root "home#index"

  resources :accounts, only: %i[show] do
    member do
      post :choose
    end

    resources :playthroughs, only: :create
  end

  resources :playthroughs, only: :show
end
