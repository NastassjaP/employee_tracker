Rails.application.routes.draw do

  resources :divisions
  root 'welcome#index'

resources :divisions do
  resources :employees
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
