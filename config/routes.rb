require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/jobmonitor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount_devise_token_auth_for 'User', at: '/api/v1/users', controllers: {
    registrations: 'api/v1/registrations',
    sessions: 'api/v1/sessions',
    passwords: 'api/v1/passwords',

    token_validations: 'api/v1/token_validations'
  }, skip: %i[omniauth_callbacks registrations]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :user, only: %i[show update]

      devise_scope :user do
        resources :users, only: [] do
          controller :registrations do
            post :create, on: :collection
          end
          resources :job_post_activities
        end
      end

      resources :jobs do
        resources :job_post_activities
      end

      resources :companies do
        resources :jobs
      end

      resources :job_types do
        resources :jobs, only: [:index]
      end

      #  resources :companies #, :only => [:create, :destroy]
      resources :job_locations

      resources :job_post_activities
    end
  end
end
