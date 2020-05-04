Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :public do
      namespace :v1 do
        get 'addresses', to: 'addresses#index'
        resource :polls, param: :poll_uuid, only: %i[index show create]
      end
    end
  end

end
