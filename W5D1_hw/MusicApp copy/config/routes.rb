Rails.application.routes.draw do

  resources :bands do
    resources :albums, except: [:show]
  end

  resources :albums
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
