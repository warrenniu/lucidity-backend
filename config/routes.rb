Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :dreams
      resources :journals
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
    end
  end
end
