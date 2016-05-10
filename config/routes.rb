Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tasklists, only: [:index, :show, :new, :create, :destroy] do
    resources :tasks, only: [:new, :create, :destroy]
  end
end
