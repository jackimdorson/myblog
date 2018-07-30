Rails.application.routes.draw do
  get 'mybooks/home'

  get 'mybooks/index'
  get 'mybooks',to: 'mybooks#index'
  get 'mybooks/:page',to: 'mybooks#index'

  get 'mybooks/show/:id',to: 'mybooks#show'

  get 'mybooks/genre/:id',to: 'mybooks#genre'
  get 'mybooks/genre/:id/:page',to: 'mybooks#genre'



  get 'mygenres/index'
  get 'mygenres',to: 'mygenres#index'

  get 'mygenres/add'
  post 'mygenres/add',to: 'mygenres#add'

  get 'mygenres/:id',to: 'mygenres#edit'
  patch 'mygenres/:id',to: 'mygenres#edit'

  get 'mygenres/delete/:id',to: 'mygenres#delete'

  get 'myposts/index'
  get 'myposts',to: 'myposts#index'

  get 'myposts/add'
  post 'myposts/add',to: 'myposts#add'

  get 'myposts/:id',to: 'myposts#edit'
  patch 'myposts/:id',to: 'myposts#edit'

  get 'myposts/delete/:id', to: 'myposts#delete'
  post 'myposts/delete/:id',to: 'myposts#delete'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
