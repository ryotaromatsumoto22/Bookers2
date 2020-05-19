Rails.application.routes.draw do
  devise_for :users

  root 'post_books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :post_books, only: [:new, :create, :index, :show]

  resources :user_profiles, only: [:edit, :update]

end
