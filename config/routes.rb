Rails.application.routes.draw do
  namespace "users", path: '/' do
    resources :registrations
    get '/oauth2callback', to: 'contacts#index' 
  end
end
