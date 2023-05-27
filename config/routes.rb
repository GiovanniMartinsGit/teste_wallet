Rails.application.routes.draw do
  resources :users do
    resources :wallet_entries, only: [:index]
    member do
      post 'credit'
      post 'debit'
    end
  end

  namespace :api do
    resources :wallet, only: [] do
      member do
        post 'credit'
        post 'debit'
        get 'balance'
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
