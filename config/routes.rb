Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index'
  get '/cocktails/:id', to: 'cocktails#show'
  get '/cocktails/new', to: 'cocktails#new'
  post '/cocktails', to: 'cocktails#create'
end
