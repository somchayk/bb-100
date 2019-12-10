Rails.application.routes.draw do  
  devise_for :users
  root 'static#index'
  
  resources :billboards do
    resources :artists

  end
  resources :artists, only: [] do
    resources :songs
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
