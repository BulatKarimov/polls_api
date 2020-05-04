Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :public do
    namespace :api do
      namespace :v1 do
        get 'addresses', to: 'addresses#index'

        resources :polls, param: :poll_uuid, only: %i[index show create]
      end
    end
  end

end
