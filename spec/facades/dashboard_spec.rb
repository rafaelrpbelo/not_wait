require 'rails_helper'

describe Dashboard do
  context '#drivers' do
    let(:drivers) { subject.drivers }
    before { create_list(:driver, 10) }

    it 'retrives all users' do
      expect(drivers.count).to be 10
    end
  end

  context '#calls_queue' do
    let(:queue) { subject.calls_queue }
    before { create_list(:call_queue, 10) }

    it 'returns all calls on queue' do
      expect(queue.count).to be 10
    end
  end

  context '#driver_calls' do
    let(:calls) { subject.driver_calls}
    before { create_list(:driver_call, 10) }

    it 'returns all calls on queue' do
      expect(calls.count).to be 10
    end
  end
end
