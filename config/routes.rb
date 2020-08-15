Rails.application.routes.draw do
  scope :accounts do
    post 'authenticate', to: 'users#authenticate'
    post 'register', to: 'users#register'
  end
  get 'authorize', to: 'users#authorize'
end
