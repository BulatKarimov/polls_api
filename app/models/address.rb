class Address
  include Her::Model
  include ActiveModel::Serialization

  use_api GIS_API
  collection_path 'entries'
  primary_key :address_uuid

  scope :fetch_all, -> { where(company_uuid: ENV['COMPANY_UUID']) }
end