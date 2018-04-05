Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:new, :create, :show, :edit, :update]

  namespace :admin do
    resources :users, only: [:index]
  end

  resources :stories, only: [:index, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  post '/roll_die', to: 'stories#roll_die'
  post '/steal_item', to: 'useritems#create'
end
