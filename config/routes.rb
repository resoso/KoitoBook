Rails.application.routes.draw do
  # get 'users/index'
  # get 'users' => 'users#index'
  # get 'users/:id' =>'users#show'

  devise_for :users

  resources :users, only: [:index, :show] do
  	 get :likes, on: :member
  end

  resources :articles do
     resource :like, only: [:create, :destroy]
  end

  

  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
