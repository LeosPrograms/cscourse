Rails.application.routes.draw do
  resources :questions
  # get    'go/:chapter/:step/:id',  to: 'questions#show'

  resources :steps
  resources :chapters
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'static#home'

  get  '/static/:id', to: 'static#resources', as: 'resources'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end