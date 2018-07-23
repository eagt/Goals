Rails.application.routes.draw do

root 'pages#home'
get 'contact' => 'pages#contact'

devise_for :users
resources :lists 
resources :tasks
resources :improvements
end
