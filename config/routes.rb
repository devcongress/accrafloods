Rails.application.routes.draw do


  get 'social' => 'pages#social'

  get 'pages/info'

  mount RailsAdmin::Engine => '/34698power', as: 'rails_admin'
  devise_for :users
  resources :people
  resources :feedbacks

  root "pages#index"
end
