Rails.application.routes.draw do
  namespace "users" do
    resources :registrations
  end
end
