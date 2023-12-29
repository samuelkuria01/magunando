Rails.application.routes.draw do
  resources :foodyproducts
  resources :householdproducts
  resources :cosmeticsproducts
  resources :babyproducts
  resources :vegesproducts
  resources :foodproducts
  resources :bevaragesproducts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
