Rails.application.routes.draw do

  get '/' => "sports#select"

  get '/select' => 'sports#index'
  
  resources :sports do
    resources :teams, only: [:show]
  end

  resources :teams, except: [:show, :index]

  devise_for :users
  resources :active_squads
  resources :students
  resources :coaches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
