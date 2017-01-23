Rails.application.routes.draw do
  resources :shared_images
  get 'shared_images/index'

  get 'shared_images/show'

  get 'shared_images/new'

  get 'shared_images/edit'

  
  resources :comics
  get 'comics/create'

  get 'comics/index'

  get 'comics/show'

  get 'comics/new'

  get 'comics/edit'

  root 'comics#index'

  get "api/mobile/v1/home/featured-comics" => "api/mobile/v1/home#featured_comics"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
