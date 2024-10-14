Rails.application.routes.draw do
  get 'public', to: 'public#public'
  get 'private', to: 'private#private'
end
