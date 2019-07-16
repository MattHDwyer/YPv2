Rails.application.routes.draw do
  devise_for :users
  resources :active_squads
  resources :students
  resources :teams
  resources :coaches
  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => "sports#index"

end
