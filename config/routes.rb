Rails.application.routes.draw do
  get "mybooks/home"
  post 'myposts/destroy/:id',to: 'myposts#destroy'

  resources :mygenres, :myposts, :mybooks 
  
  get 'mybooks/genre/:id',to: 'mybooks#genre'
  get 'mybooks/genre/:id/:page',to: 'mybooks#genre'
  get 'mybooks/page/:page',to: 'mybooks#index'

  get 'myposts/destroy/:id',to: 'myposts#destroy'
  post 'myposts/new',to: 'myposts#new'
  patch 'myposts/:id/edit',to: 'myposts#edit'

  post 'mygenres/new',to: 'mygenres#new'
  patch 'mygenres/:id/edit',to: 'mygenres#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
