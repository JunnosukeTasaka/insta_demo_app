Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
    controllers: { registrations: 'registrations' } 

  get '/users/:id', to: 'users#show', as: 'user'

  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  post '/posts/:post_id/photos', to: 'photos#create', as: 'post_photos'
end
