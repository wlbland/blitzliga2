Rails.application.routes.draw do
  devise_for :users

  root to: 'teams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :teams
  resources :team_scores

end
