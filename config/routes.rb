Rails.application.routes.draw do
  post 'authenticate', to: 'users#authenticate'
  get 'authorized', to: 'users#authorized'
  post 'register', to: 'users#register'
end
