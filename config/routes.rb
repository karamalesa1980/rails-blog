Rails.application.routes.draw do
  get 'home/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
