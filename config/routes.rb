Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :loans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
