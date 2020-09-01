Rails.application.routes.draw do
  # get 'signups/show'
  # get 'signups/new'
  # get 'signups/create'
  # get 'signups/edit'
  # get 'signups/update'
  resources :signups, only: [:show, :new, :create, :edit, :update]
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
