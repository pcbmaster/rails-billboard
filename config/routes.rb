Rails.application.routes.draw do
  #resources :topboards
  root 'artists#index'
  resources 'artists'
  #root 'topboards#index'
 
end
