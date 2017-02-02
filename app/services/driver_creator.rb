class DriverCreator
  attr_reader :driver

  def initialize(params)
    @driver = Driver.new(params)
  end

  def save
    Driver.transaction do
      driver.save!
      CallQueue.create!(driver: driver)
    end
  end
end
