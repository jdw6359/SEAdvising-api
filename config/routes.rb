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

      # student - label configuration endpoints
      get 'students/:student_id/labels' => 'students_labels#index'
      post 'students/:student_id/labels/:id' => 'students_labels#create'
      delete 'students/:student_id/labels/:id' => 'students_labels#destroy'

      resources :students, only: [:index, :show, :create, :update] do
        resources :transactions, only: [:index]
        resources :notes, only: [:index, :create]
        resources :coops, only: [:create]
        resources :audits, only: [:create]
        resource :cop_outs, only: [:create, :update]
        resources :senior_projects, only: [:create]
      end
    end
  end
end
