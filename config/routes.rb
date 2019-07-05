Rails.application.routes.draw do

  devise_for :users

  resources :projects
  resources :divisions

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :divisions do
    resources :employees
  end

  resources :projects do
    resources :employees
  end

  post 'projects/:id/employees/:id' => 'projects#remove', as: 'remove_employee'


end
