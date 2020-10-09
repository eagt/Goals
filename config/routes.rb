Rails.application.routes.draw do

resources :form_messages
root 'pages#home'
get 'contact' => 'pages#contact'
get 'pages/unauthorised'

devise_for :users
resources :lists 
resources :tasks

resources :improvements do 
	member do 
		put "like" => "improvements#upvote"
		put "unlike" => "improvements#downvote"

	end
end
	
end

