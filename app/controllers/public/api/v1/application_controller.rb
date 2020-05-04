class Public::Api::V1::ApplicationController < Public::Api::ApplicationController
  before_action :set_gis_token
  before_action :set_ss_api_token

  def render_error(error: 'error.default', status: :unprocessable_entity)
    return render json: { error: error },
                  serializer: ::External::ErrorSerializer,
                  status: status
  end

  private

  def set_ss_api_token
    RequestStore.store[:ss_api_token] = "Bearer #{ENV['SS_API_TOKEN']}"
  end

  def set_gis_token
    RequestStore.store[:gis_token] = "Bearer #{ENV['GIS_TOKEN']}"
  end
end
