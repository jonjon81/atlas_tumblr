Rails.application.routes.draw do

  get 'comments/index'

  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
