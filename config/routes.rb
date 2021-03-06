JSequencr::Application.routes.draw do

  root :to => "welcome#index"  

  resources :users, only: [:create]

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  get "/current_user", to: "session#current_user_return"

  resources :sound_patterns, only: [:create]

  resources :songs, only: [:create, :show, :update]

  get "user/:id/songs", to: "songs#show_user_songs"

  delete "clear_tracks/:id", to: "songs#clear_tracks"
  get "sound_patterns_of_song/:id", to: "songs#all_my_sound_patterns"

end
