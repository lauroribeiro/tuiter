Rails.application.routes.draw do
  devise_for :users
  root "tuites#index"
  resources :tuites
end
