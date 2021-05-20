Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :sessions, only:[:new, :create]
  get '/register', to: 'users#new' 
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  resources :users, only:[:show, :delete]
  resources :muscle_groups
  resources :routines 
  

end
