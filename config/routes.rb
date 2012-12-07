Sugargliders::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  
  resources :users, only: [:index, :show]
  resources :readings do
    collection do
      post 'review'
    end
  end
  resources :follows, only: [:create, :destroy]
   
  root :to => 'home#index'

end
