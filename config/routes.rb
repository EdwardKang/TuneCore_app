TunecoreProject::Application.routes.draw do
  root :to => 'songs#search'
  get "/selected", to: "songs#selected"
  resources :songs, only: [:index]
end
