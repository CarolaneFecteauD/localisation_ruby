Rails.application.routes.draw do
 
  devise_for :users
  get 'cities/showall' => 'cities#showall'

  resources :localisations
  resources :cities

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'localisations#index'

end
