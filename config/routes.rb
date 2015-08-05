Rails.application.routes.draw do

  devise_for :authors
  devise_for :users

  
  namespace :administrator, path: 'autor' do 
    root 'dashboard#index'
    
    resources :authors
    resources :posts
    resources :post_categories
  end

  namespace :portal, path: '/' do   
    root 'home#index'
    
    resources :posts
    resources :colunits
  end

end
