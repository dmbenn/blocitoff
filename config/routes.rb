Rails.application.routes.draw do

  devise_for :users # , :controllers => { :registrations => 'users/registrations' } 
  
  resources :lists, except: [:index] do
    resources :items, only: [:create, :destroy]
  end

  root to: 'shallows#home'
  
end
