Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  resources :posts , only:[ :index, :new , :create ]
  root "posts#index"
end
