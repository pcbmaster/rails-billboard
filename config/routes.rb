Rails.application.routes.draw do
  resources :topboards
  
  resources :songs

  root 'topboards#index'
 
end
