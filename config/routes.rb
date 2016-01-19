Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # middleware, ancillary functionality
      resources :sessions, only: [:create, :destroy]
      post 'sessions/restore' => 'sessions#restore'

      resources :password_resets, only: [:create, :show, :update]

      # entity-based resources
      resources :transactions, only: [:index]
      resources :posts, only: [:index]
      resources :advisors, only: [:index]
      get 'students/search' => 'students#search'
      resources :students, only: [:index, :show, :create] do
        resources :transactions, only: [:index]
        resources :coops, only: [:create]
        resources :audits, only: [:create]
        resources :cop_outs, only: [:create]
      end
    end
  end
end
