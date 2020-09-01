Rails.application.routes.draw do
  resources :works, only: [:index]
end
