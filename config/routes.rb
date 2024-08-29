Rails.application.routes.draw do
  resources :tik_tok_posts
  resources :posts

  # Defines the root path route ("/") ---- example.com
  root "articles#index"

  resources :articles 

  # Easter Egg
  get '/teapot', to: 'application#teapot'

end
