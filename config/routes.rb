Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show]
  resources :genres, only: [:index, :new, :create, :show]
  resources :artists, only: [:index, :new, :create, :show]
  get '/artists/:id/edit', to: 'artists#edit', as: :edit_artist
  patch '/artists/:id', to: 'artists#update'
  get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  patch '/songs/:id', to: 'songs#update'
  get '/genres/:id/edit', to: 'genres#edit', as: :edit_genre
  patch '/genres/:id', to: 'genres#update'
end
