class CallsQueueController < ApplicationController
  def index
    @calls_queue = CallQueue.all
  end
end
