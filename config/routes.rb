Rails.application.routes.draw do

  devise_for :authors,  controllers: {
    sessions:  'author_sessions',
    registrations:  'author_registrations'
  }

  devise_for :users

  
  authenticate :author do
    namespace :administrator, path: 'autor' do 
      root 'dashboard#index'
      
      resources :authors
      resources :posts
      resources :post_categories
      resources :colunists
      resources :content_categories
      resources :contents
      resources :comments
    end
  end
  
  namespace :portal, path: '/' do   
    root 'home#index'
    
    resources :posts
    resources :colunits
  end

end
