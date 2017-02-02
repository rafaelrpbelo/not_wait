class DriverCallHandler
  def self.next_driver
    CallQueue.first.driver
  end
end
