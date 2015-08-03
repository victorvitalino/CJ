Rails.application.routes.draw do

  resources :users
  resources :administrator
  
  namespace :administrator, path: 'admin' do 
    root 'dashboard#index'
    
    resources :posts
    resources :post_categories
  end

  namespace :portal, path: '/' do   
    root 'home#index'
    
    resources :posts
    resources :colunits
  end

end
