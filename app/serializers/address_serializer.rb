class AddressSerializer < ActiveModel::Serializer
  attributes :short_address, :uuid, :location

  def location
    [object.lat, object.lon]
  end
end