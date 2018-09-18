Rails.application.routes.draw do
  
  root 'pages#arena'
  get 'custom_arena', to: 'pages#custom_arena'
  post 'create_score', to: 'pages#create_score'
  get 'show_score', to: 'pages#show_score'
  
  resources :characters, :fights, :weapons
  resources :overall_character_stats, only: [:show]
  resources :fight_character_stats, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
