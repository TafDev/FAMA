Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :contacts,  only: [:new, :create]
  resources :reviews, only: [:new, :create]
  match '*a', :to => 'errors#routing', via: :get
end
