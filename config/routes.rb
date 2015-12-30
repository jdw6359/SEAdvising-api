Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # middleware, ancillary functionality
      resources :sessions, only: [:create, :destroy]
      post 'sessions/restore' => 'sessions#restore'

      resources :password_resets, only: [:create, :show, :update]

      # entity-based resources
      resources :advisors, only: [:index]
      resources :students, only: [:index, :show, :create] do
        resources :coops, only: [:create]
        resources :audits, only: [:create]
      end
      resources :coops, only: [:destroy]

    end
  end
end
