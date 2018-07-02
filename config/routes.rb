Rails.application.routes.draw do
  resources :posts
  get 'static_pages/home'
  get 'users/new'
  get 'static_pages/index'
  get 'dashboard/new'
  devise_for :users
  resources :users
  root 'static_pages#index'
  get 'dashboard/entertainment'
  get 'dashboard/tech'
  get 'dashboard/cinema'
  get 'dashboard/food'
  get 'dashboard/sport'
  get 'dashboard/video'
end
