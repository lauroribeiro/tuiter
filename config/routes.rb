Rails.application.routes.draw do
  root "tuites#index"
  resources :tuites
end
