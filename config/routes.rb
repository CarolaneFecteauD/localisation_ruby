Rails.application.routes.draw do
  resources :localisations

  root to: 'localisations#index'
end
