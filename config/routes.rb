Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :academic_years, only: [ :index, :show, :destroy, :create, :update ]
      resources :teacher_subjects, only: [ :index, :show, :destroy, :create, :update ]

      resources :periodes, only: [ :index, :show, :destroy, :create, :update ]
      resources :teachers, only: [ :index, :show, :destroy, :create, :update ]
      resources :students, only: [ :index, :show, :destroy, :create, :update ]
      resources :subjects, only: [ :index, :show, :destroy, :create, :update ]

      resources :roles, only: [ :index, :show, :destroy, :create, :update ]
    end
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
