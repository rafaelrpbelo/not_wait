class DriverCallHandler
  class << self
    def next_driver
      CallQueue.ordered.first.driver
    end

    def calls_next
      DriverCall.transaction do
        DriverCall.create!(driver: next_driver, final_time: Time.now + DriverCall::MAX_WAIT_TIME)
        CallQueue.ordered.first.touch
        # Notify driver
        # Create job to watch this call
      end
    end
  end
end
