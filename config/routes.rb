Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :contacts,  only: [:create]
  resources :reviews, only: [:create]
  resources :products, only: [:show] do
    resources :transactions, only: [:new, :create]
  end
  # match '*a', :to => 'errors#routing', via: :get

  get '/about' => 'home#about'
  get '/services' => 'home#services'
  get '/faq' => 'home#faq'
  get '/review' => 'reviews#new'
  get '/contact' => 'contacts#new'
  post '/notify' => 'transactions#notify'
  get 'thank_you' => 'transactions#thank_you'
  get '/preload' => 'transactions#preload'

end
