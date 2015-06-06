Rails.application.routes.draw do


  get 'social' => 'pages#social'
  get 'news' => 'news#index'
  get 'pages/info'

  mount RailsAdmin::Engine => '/34698power', as: 'rails_admin'

  devise_for :users
  resources :people
  resources :feedbacks
  resources :news

  root "pages#index"
end
