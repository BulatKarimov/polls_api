class Public::Api::V1::AddressesController < Public::Api::ApplicationController
  include ActionController::Helpers

  expose :addresses, -> { Address.fetch_all }

  def index
    render json: addresses, each_serializer: AddressSerializer, status: :ok
  end
end