class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
