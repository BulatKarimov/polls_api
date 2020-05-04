class Public::Api::V1::PollsController < Public::Api::V1::ApplicationController

  expose :type, -> { params[:type] }
  expose :archived_polls, -> { Poll.where(poll_type: 'archived') }
  expose :planned_polls, -> { Poll.where(poll_type: 'planned') }

  expose :poll, -> { Poll.find_by(uuid: params[:poll_uuid]) }
  expose :polls, -> { Poll.all }

  def index
    return render json: archived_polls, each_serializer: PollSerializer, status: :ok if type == 'archived'
    return render json: planed_polls, each_serializer: PollSerializer, status: :ok if type == 'planed'

    render json: polls, each_serializer: PollSerializer, status: :ok
  end

  def show
    return render json: { error: 'Poll not found' }, status: :not_found if poll.nil?

    render json: poll, serializer: PollSerializer, status: :ok
  end

  def create
    result = Poll::Create.call(poll_params)

    return render_error(error: result.error, status: result.status) if result.failure?
    render json: poll, serializer: PollSerialzier, status: :ok
  end

  private

  def poll_params
    {
        address_uuids: params[:addresses],
        text: params[:text],
        start_date: params[:start_date],
        end_date: params[:start_date]
    }
  end
end