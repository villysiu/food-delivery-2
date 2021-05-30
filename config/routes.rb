Rails.application.routes.draw do
  get 'users/show'
  devise_for :users


  devise_scope :user do
    authenticated :user do
      root 'users#show', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
