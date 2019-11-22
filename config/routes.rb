Rails.application.routes.draw do
  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :dates
  resources :gifts
  resources :friends
  resources :dates
  resources :users, param: :username
  post 'login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
