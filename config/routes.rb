Rails.application.routes.draw do
  resources :businesses
  resources :random_business, :only => [:index]
  resources :business_name_search, :only => [:index]
end
