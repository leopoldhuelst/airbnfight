Rails.application.routes.draw do
  devise_for :fighters
  root to: 'pages#home'

  get '/arenas', to: 'arenas#index'
  get '/dashboard', to: 'dashboards#index'
  get '/arenas/:id/edit', to: 'arenas#edit', as: 'arena_edit'
  patch '/arenas/:id', to: 'arenas#update'
  # get 'arenas/new', to: 'arenas#new'
  # post 'arenas', to: 'arenas#create'
  get '/arenas/:id', to: 'arenas#show', as: 'arena'
  delete '/arenas/:id', to: 'arenas#destroy', as: 'arenas_delete'
end
