Rails.application.routes.draw do
  get 'sessions/new'
  	get '/', to: 'static#home', as: 'root'

	get '/signup', to: 'users#new'

	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'
	
	resources :users
	resources :gossips do
		resources :comments, only: [:create, :destroy]
		resources :likes, only: [:create, :destroy]
	end

end
