Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:new, :create, :show, :edit, :update]

  namespace :admin do
    resources :users, only: [:index]
    resources :items, only: [:index, :new, :create, :destroy]
    resources :stories, only: [:index, :new, :create, :destroy]
    resources :enemies, only: [:index, :new, :create, :destroy]
    resources :storyitems, only: [:index, :new, :create, :destroy]
    resources :storyenemies, only: [:index, :new, :create, :destroy]
  end

  resources :stories, only: [:index, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  post '/roll_die', to: 'stories#roll_die'
  post '/run_away', to: 'stories#run_away'
  post '/steal_item', to: 'useritems#create'
end
