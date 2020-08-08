Rails.application.routes.draw do
  scope :accounts do
    post 'authenticate', to: 'users#authenticate'
    get 'authorized', to: 'users#authorized'
  end
end
