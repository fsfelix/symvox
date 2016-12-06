Rails.application.routes.draw do
  resources :musicians
  root 'musicians#index'
end
