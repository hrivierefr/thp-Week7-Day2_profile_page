Rails.application.routes.draw do
  get '/', to: 'static#home', as: 'root'
  resources :users
  resources :gossips do
  	resources :comments, only: [:create, :destroy]
  	resources :likes, only: [:create, :destroy]
  end

end
