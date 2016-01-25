Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#show'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
