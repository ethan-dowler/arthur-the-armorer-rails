Rails.application.routes.draw do
  root "home#index"

  resources :playthroughs, only: %i[index show create] do
    resources :characters, only: %i[new create]

    resources :overworld, only: :index
  end
end
