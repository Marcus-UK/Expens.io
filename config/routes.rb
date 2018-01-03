Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :expenses

  root 'welcome#index'
end
