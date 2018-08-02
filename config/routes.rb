Rails.application.routes.draw do
  get "mybooks/home"
  get 'mybooks/:id/:page',to: 'mybooks#genre'

  resources :mygenres, :myposts
  resources :mybooks, only:[:index, :show], controller: 'mybooks'
  namespace :myposts do
    resources :del, only:[:show, :destroy]
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
