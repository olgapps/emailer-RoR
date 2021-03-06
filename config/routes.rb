Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :contacts
  devise_for :users, :controllers => {registrations: 'registrations'}
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
