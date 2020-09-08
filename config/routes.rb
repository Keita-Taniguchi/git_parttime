Rails.application.routes.draw do
  devise_for :students
  devise_for :admins
  root  'works#index'         
  resources :works, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :reservations, only: [:create]
  resources :students, only: [:show]
end
