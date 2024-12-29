Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :academic_years, only: [ :index, :show, :destroy, :create, :update ]
      resources :periodes, only: [ :index, :show, :destroy, :create, :update ]
    end
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
