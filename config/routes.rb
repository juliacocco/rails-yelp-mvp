Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create, :edit] do
    resources :reviews, only: [ :new, :create ]
  end
  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
end


