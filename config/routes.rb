Rails.application.routes.draw do
  resources :peaks do
    resources :tips
  end
  root 'peaks#index'
  devise_for :users
  get '/users/:id' => 'users#show', as: :user
  resources :climbs
  resources :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
