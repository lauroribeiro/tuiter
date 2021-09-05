Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  root "tuites#index"
  resources :tuites
end
