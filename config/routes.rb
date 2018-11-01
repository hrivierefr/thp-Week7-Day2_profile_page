Rails.application.routes.draw do
  get '/', to: 'static#home', as: 'root'
  resources :users
  resources :gossips do
  	resources :likes, only: [:create]
  	resources :comments, except: []
  end

end
