class Public::Api::V1::AddressesController < Public::Api::V1::ApplicationController

  expose :addresses, -> { Address.fetch_all }

  def index
    render json: addresses, each_serializer: AddressSerializer, status: :ok
  end
end