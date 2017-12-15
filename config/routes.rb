Rails.application.routes.draw do
  resources :businesses
  resources :random, :only => [:index]
end
