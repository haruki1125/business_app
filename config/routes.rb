Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  root to: "business#index"
  resources :business
  resources :notes
end
