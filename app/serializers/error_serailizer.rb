class ErrorSerializer < ActiveModel::Serializer
  attributes :error, :message, :status

  def error; true end

  def message
    object[:error]
  end

  def status
    object[:status]
  end
end