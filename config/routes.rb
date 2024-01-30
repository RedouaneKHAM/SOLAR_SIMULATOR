Rails.application.routes.draw do
  get 'solarkits/index'
  # get 'simulations/new'
  # get 'simulations/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resource :simulations, only: [:show,:new,:create]
  resource :reports, only: [:show]
  resource :solarkits, only: [:index]

end
