Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about", as: "about"
  
  resources :books, only: [:index, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
  
end

  
