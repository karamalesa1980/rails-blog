Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  
  get 'home/index'
  root to: "articles#index"
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  get 'users/edit', as: 'user_root'
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resource :comments, only: [:create, :destroy], path_names: {:show => ''}
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
