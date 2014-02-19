TunecoreProject::Application.routes.draw do
  root :to => 'songs#search'
  resources :songs, only: [:index]
end
