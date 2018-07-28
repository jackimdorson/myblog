Rails.application.routes.draw do
  get 'mygenres/index'
  get 'mygenres',to: 'mygenres#index'

  get 'mygenres/add'
  post 'mygenres/add',to: 'mygenres#add'

  get 'mygenres/:id',to: 'mygenres#edit'
  patch 'mygenres/:id',to: 'mygenres#edit'

  get 'mygenres/delete/:id',to: 'mygenres#delete'

  get 'myposts/index'

  get 'myposts/add'

  get 'myposts/edit'

  get 'myposts/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
