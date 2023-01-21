Rails.application.routes.draw do
  get 'hotels/index'
  get 'hotels/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show] do
      resources :rooms, only: [:new, :create] do
        resources :bookings, only: [:create]
      end
    end
  end
  namespace :host do
    resources :stars, only: [:new, :create]

    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end

  end

  resource :dashboard, only: :show
end
