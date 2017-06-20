Rails.application.routes.draw do
  root 'peaks#index'
  get '/:id' => 'peaks#show', as: :peak
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
