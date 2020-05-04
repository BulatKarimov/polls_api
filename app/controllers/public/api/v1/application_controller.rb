class Public::Api::V1::ApplicationController < Public::Api::ApplicationController
  include ActionController::Helpers

  def render_error(error: 'error.default', status: :unprocessable_entity)
    return render json: { error: error },
                  serializer: ErrorSerializer,
                  status: status
  end
end
