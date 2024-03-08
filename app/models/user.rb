class User < ApplicationRecord
  before_create :do_before_create

  def do_before_create
    self.uuid ||= ::SecureRandom.hex
  end
end
