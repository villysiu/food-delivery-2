Rails.application.routes.draw do
  #devise_for :users

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
   authenticated :user do
    root 'users#show', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show] 
end