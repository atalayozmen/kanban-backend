Rails.application.routes.draw do
  get 'login', to: 'public#login'
  get 'public', to: 'public#public'
  get 'private', to: 'private#private'
end
