Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # middleware, ancillary functionality
      resources :sessions, only: [:create, :destroy]
      resources :password_resets, only: [:create, :show, :update]

      # entity-based resources
      resources :students, only: [:index, :show]
    end
  end
end
