Rails.application.routes.draw do
  devise_for :moniteurs
  devise_for :users
  root to: 'pages#home'
  resources :chevals
  get '/login/chooseUser', to: "pages#chooseUser"
  #  get 'chevals/new', to: "chevals#new", as: 'cheval_new'
  # post 'chevals/new', to: "chevals#create", as: 'cheval_create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
