Rails.application.routes.draw do
  devise_for :admins
  root  'works#index'         
  resources :works, only: [:index, :new, :create, :destroy, :edit, :update]
end
