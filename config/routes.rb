Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/articles/subscribe', to: 'articles#subscribe', as: 'subscribe'

  resources :articles do
    resources :comments
  end
  # resources :articles
  #
  #

  root 'welcome#index'
end
