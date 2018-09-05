Rails.application.routes.draw do
  resources :topboards
  
  root 'topboards#index'
 
end
