Rails.application.routes.draw do

root 'pages#home'
get 'contact' => 'pages#contact'

devise_for :users
resources :lists
resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
