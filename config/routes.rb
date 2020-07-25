Rails.application.routes.draw do
  get 'accounts/test', action: :test, controller: 'test'
end
