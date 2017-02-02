Rails.application.routes.draw do
 
  
  resources :shared_images
  
  resources :comics do
    resources :comic_images
  end
  
  root 'comics#index'

  get "api/mobile/v1/home/featured-comics" => "api/mobile/v1/home#featured_comics"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
