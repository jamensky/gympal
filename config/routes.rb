Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :sessions, only:[:new, :create]
  get '/register', to: 'users#new' 
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'auth/google_oauth2/callback' => 'sessions#omniauth'

  resources :routines
  resources :muscle_groups

  resources :users do 
     resources :muscle_groups, only: [:index, :show]
  end 
  
  

end
