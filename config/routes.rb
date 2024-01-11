Rails.application.routes.draw do
  resources :liquors
  get 'category/liquor', to: 'liquors#index', as: 'category_liquors'

  resources :freshfoods, path: 'category/freshfoods' do
    resources :products, only: [:show], controller: 'products'
  end
  
  resources :householdproducts, path: 'category/householdproducts' do
    resources :products, only: [:show], controller: 'products'
  end
  
  resources :vegesproducts, path: 'category/vegesproducts' do
    resources :products, only: [:show], controller: 'products'
  end
  
  resources :babyproducts, path: 'category/babyproducts' do
    resources :products, only: [:show], controller: 'products'
  end 
  
  resources :cosmeticsproducts, path: 'category/cosmeticsproducts' do
    resources :products, only: [:show], controller: 'products'
  end
  
  resources :bevaragesproducts, path: 'category/bevaragesproducts' do
    resources :products, only: [:show], controller: 'products'
  end
  

  get '/category/:category_name/:product_id', to: 'products#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end





