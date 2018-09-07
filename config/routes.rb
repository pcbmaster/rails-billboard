Rails.application.routes.draw do
  devise_for :users
  root 'topboards#index'
  resources :topboards do
    resources :songs
  end
  
  resources :artists do
    resources :songs
  end
  resources :songs
end
