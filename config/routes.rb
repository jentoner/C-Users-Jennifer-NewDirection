Rails.application.routes.draw do
  # HTTP verbs: GET, POST, PUT, PATCH, DELETE
  # verb 'url/path' => 'controller#action'
  root to: 'customers#index'
  get 'customers' => 'customers#index', as: 'home'

  get 'customers/:id'      => 'customers#show',  as: 'customer'
  get 'customers/:id/edit' => 'customers#edit',  as: 'edit'
  patch 'customers/:id'    => 'customers#update'
  put 'customers/:id'      => 'customers#update'

  post 'customers'         => 'customers#create'
  get 'customers/new'      => 'customers#new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
