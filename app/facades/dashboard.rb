class Dashboard
  def drivers
    @drivers ||= Driver.all
  end

  def calls_queue
    @calls_queue ||= CallQueue.all
  end

  def driver_calls
    @driver_calls ||= DriverCall.all
  end
end
