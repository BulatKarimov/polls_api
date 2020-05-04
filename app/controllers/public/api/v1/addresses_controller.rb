class Public::Api::V1::AddressesController < Public::Api::ApplicationController

  def index
    addresses = Address.where(company_uuid: ENV['COMPANY_UUID'])

    render json: addresses, each_serializer: AddressSerializer, status: :ok
  end
end