Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'search_director/:title' => 'movies#search_directors', as: 'search_directors'
end
