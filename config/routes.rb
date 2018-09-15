Rails.application.routes.draw do
  
  root 'pages#arena'
  resources :characters
  resources :fights, only: [:new, :create, :index]
  resources :weapons
  resources :overall_character_stats, only: [:show]
  resources :fight_character_stats, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
