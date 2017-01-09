Rails.application.routes.draw do
  resources :comics
  get 'comics/create'

  get 'comics/index'

  get 'comics/show'

  get 'comics/new'

  get 'comics/edit'

  root 'comics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
