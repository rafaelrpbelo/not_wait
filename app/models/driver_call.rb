class DriverCall < ApplicationRecord
  MAX_WAIT_TIME = 10.minutes

  belongs_to :driver

  validates :final_time, presence: true
end
