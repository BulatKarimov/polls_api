class Poll < ApplicationRecord
  before_create :set_uuid

  has_many :answers, foreign_key: :poll_uuid, primary_key: :uuid
end
