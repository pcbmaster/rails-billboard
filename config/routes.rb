Rails.application.routes.draw do
  root 'topboards#index'
  resources :topboards do
    resources :songs
  end
  
  resources :artists do
    resources :songs
  end
  resources :songs
end
