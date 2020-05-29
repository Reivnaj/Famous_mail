Rails.application.routes.draw do
  resources :email
  root "email#index"
end
