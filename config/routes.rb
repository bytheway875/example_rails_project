Rails.application.routes.draw do
  # post 'comments', to: 'comments#create'
  # delete 'comments/:id', to: 'comments#destroy', as: 'comment'

  resources :comments, only: [:create, :destroy]
  #login form
  get '/login', to: 'login#new'

  # check to see if we have a user, then set session[:user_id]
  post '/login', to: 'login#create'

  # logout
  delete '/logout', to: 'login#destroy'

  get '/', to: 'home#index'

  resources :posts

  # get '/posts', to: 'posts#index'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/new', to: 'posts#new'
  # post '/posts', to: 'posts#create'
  # get '/posts/:id/edit', to: 'posts#edit'
  # put '/posts/:id', to: 'posts#update'
  # delete '/posts/:id', to: 'posts#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/hello', to: 'greeting#hello'
  get '/goodbye', to: 'greeting#goodbye'


end
