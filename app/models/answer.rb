class Answer < ApplicationRecord
  before_create :set_uuid

  belongs_to :poll, foreign_key: :poll_uuid, primary_key: :uuid
end