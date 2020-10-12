Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts, only: %i[index new create]
  root 'posts#index'
end
