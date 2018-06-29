Rails.application.routes.draw do
  resources :posts
  get 'static_pages/home'
  get 'users/new'
  get 'a/home'
  get 'static_pages/index'
  devise_for :users
  root 'static_pages#index'
end
