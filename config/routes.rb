Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root
  root 'ads#index', as: 'home'

  # Regular routes

  # Resource routes
  resources :ads do
    resources :comments
  end
  resources :categories

end
