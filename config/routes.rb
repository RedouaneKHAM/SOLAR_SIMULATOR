Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/show'
  get 'solarkits/index'
  devise_for :users
  root to: "pages#home"
  get "about", to: "pages#about"
  get "faq", to: "pages#faq"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :simulations, only: [:show,:new,:create]
  resources :reports, only: [:show]
  resources :solarkits
  resources :contacts, only: [:show,:new,:create]
end
