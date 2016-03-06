Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # middleware, ancillary functionality
      resources :sessions, only: [:create, :destroy]
      post 'sessions/restore' => 'sessions#restore'

      resources :password_resets, only: [:create, :show, :update]

      # entity-based resources
      resources :transactions, only: [:index]
      resources :posts, only: [:index, :create]
      resources :advisors, only: [:index]
      resources :labels, only: [:index, :create, :show, :update]

      # resources scoped down to specific students
      get 'students/search' => 'students#search'
      resources :students, only: [:index, :show, :create, :update] do
        resources :transactions, only: [:index]
        resources :notes, only: [:index, :create]
        resources :coops, only: [:create]
        resources :audits, only: [:create]
        resources :cop_outs, only: [:create]
        resources :senior_projects, only: [:create]
      end
    end
  end
end
