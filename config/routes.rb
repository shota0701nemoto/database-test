Rails.application.routes.draw do


    root 'articles#index'
    resources :articles
    #resources :users

    namespace :admin do
      devise_for :users
      resources :users
      resources :articles
    end

end
