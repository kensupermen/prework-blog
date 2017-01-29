Rails.application.routes.draw do

	root to: 'articles#index'
	resources :tags
 	resources :articles do 
  		resources :comments
  	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
