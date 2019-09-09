Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  get 'pages/home'
  get 'pages/dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "pages#home"

end
