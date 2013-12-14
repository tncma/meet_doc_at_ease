class Patient < ActiveRecord::Base
  before_create do
    self.registration_number = SecureRandom.hex(4)
  end
end
