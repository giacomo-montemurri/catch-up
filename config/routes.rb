Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  root to: 'pages#home'

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
end
