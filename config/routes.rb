Rails.application.routes.draw do
  get 'welcome/index'

  namespace :api do
    resources :users, only: [:index, :show, :create]
    resources :session, only: [:create, :destroy]
    delete '/users', to: 'users#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
