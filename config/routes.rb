Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/show'
  get 'doses/new'
  get 'doses/controller'
  get 'doses/edit'
  get 'doses/update'
  get 'doses/destroy'
  root 'cocktails#index'

  resources :cocktails do
    resources :doses
  end
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
