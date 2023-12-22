# config/routes.rb
Rails.application.routes.draw do
  # Other routes...

  resources :users, only: [:new, :create]

  # Other routes...
end
