Rails.application.routes.draw do
  devise_for :students
  devise_for :admins
  root  'works#index'         
  resources :works, only: [:index, :new, :create, :destroy, :edit, :update] do
   collection do
      get 'search'
    end
  end
  resources :reservations, only: [:index, :new, :create,:update, :destroy]
  resources :students, only: [:show]
end
