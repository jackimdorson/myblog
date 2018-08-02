Rails.application.routes.draw do
  get "mybooks/home"

  resources :mybooks 

  resources :mygenres, controller: 'mygenres'
  resources :myposts, controller: 'myposts'
  get 'myposts/del/:id',to: 'myposts#del'

  
  get 'mybooks/genre/:id',to: 'mybooks#genre'
  get 'mybooks/genre/:id/:page',to: 'mybooks#genre'
  get 'mybooks/page/:page',to: 'mybooks#index'




  # post 'mygenres/new',to: 'mygenres#new/'
  # patch 'mygenres/:id/edit',to: 'mygenres#edit'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
