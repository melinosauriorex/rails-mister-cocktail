Rails.application.routes.draw do
  get 'doses/new'
  get 'cocktails/index'
  get 'cocktails/show'
 resources :cocktails do
  resources :doses, only: [:new, :create]
 end

 resources :doses, only: [:destroy]
end
