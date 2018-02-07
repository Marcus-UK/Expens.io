Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'expenses/admin_index'

  resources :expenses

  root 'welcome#index'
end
