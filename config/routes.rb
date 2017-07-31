Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts
  # GET posts     #=> PostController#index
  # GET posts/:id #=> PostController#show
  # GET posts/new #=> PostController#new
  # GET posts/    #=> PostController#create
  # GET posts/:id/edit #=> PostController#edit
  # GET posts/:id #=> ostController#update
end
