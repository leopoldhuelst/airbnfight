Rails.application.routes.draw do
  devise_for :fighters
  root to: 'pages#home'

  get '/dashboard', to: 'dashboards#index'
  get '/arenas', to: 'arenas#index'
  get '/arenas/:id/edit', to: 'arenas#edit', as: 'arena_edit'
  patch '/arenas/:id', to: 'arenas#update'
  get 'arenas/new', to: 'arenas#new'
  post 'arenas', to: 'arenas#create'
  get '/arenas/:id', to: 'arenas#show', as: 'arena'
  delete '/arenas/:id', to: 'arenas#destroy', as: 'arenas_delete'

  get '/arenas/:arena_id/fights/new', to: 'fights#new', as: 'fights_new'
  post '/arenas/:arena_id/fights', to: 'fights#create', as: 'arena_fights'
  get '/fights/:id', to: 'fights#show', as: 'fight'
  get '/fights/:id/edit', to: 'fights#edit', as: 'fight_edit'
  patch '/fights/:id', to: 'fights#update', as: 'arena_fight'
end
