Rails.application.routes.draw do

  get "mybooks/home"
  resources :mygenres, :myposts
  resources :mybooks, only:[:index, :show], controller: 'mybooks'

  namespace :myposts do
    resources :del, only:[:show, :destroy]
  end

  namespace :mybooks do
    resources :genre, only:[:show]
  end

end
