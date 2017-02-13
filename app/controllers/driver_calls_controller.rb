class DriverCallsController < ApplicationController
  def create
    if DriverCallHandler.calls_next
      redirect_to root_path, notice: 'Call was created successfully'
    else
      redirect_to root_path, alert: 'Call could not be created'
    end
  end
end
