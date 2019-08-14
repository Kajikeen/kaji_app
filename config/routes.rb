Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"
  get '/' => "home#top"
  get 'about' => "home#about"
  get 'posts/:id' => "posts#show"
end