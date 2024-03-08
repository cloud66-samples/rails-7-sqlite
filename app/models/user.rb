class User < ApplicationRecord
  has_many :articles

  before_create :do_before_create

  def do_before_create
    self.uuid ||= ::SecureRandom.hex
  end
end
