Rails.application.routes.draw do
  root "events#new"
  resources :events, only: [:new, :create, :edit, :update]
end
