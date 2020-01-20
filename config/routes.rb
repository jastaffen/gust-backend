Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :follows, :users
      post '/login', to: 'auth#create'
      get '/votes', to: 'votes#index'
      get '/votes/:id', to: 'votes#show'
      post '/votes', to: 'votes#create'
      delete '/votes/:id', to: 'votes#destroy'
      post '/votes/search', to: 'votes#search', as: 'votes_search'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
