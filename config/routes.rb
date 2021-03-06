Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'message', to: 'messages#create'
  delete 'logout', to: 'sessions#destroy'

  mount ActionCable.server, at: '/cable'
end
