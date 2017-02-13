require 'rails_helper'

describe DriverCallHandler do
  before do
    DriverCreator.new(name: 'Driver 1').save
    DriverCreator.new(name: 'Driver 2').save
    DriverCreator.new(name: 'Driver 3').save
  end

  describe '.next_driver' do
    let(:driver) { DriverCallHandler.next_driver }

    it 'returns next driver to receive the call' do
      expect(driver.name).to eq 'Driver 1'
    end
  end

  describe '.call_next' do
    it 'returns true' do
      expect(DriverCallHandler.call_next).to be true
    end

    it 'creates a new DriverCall' do
      expect{ DriverCallHandler.call_next }.to change{ DriverCall.count }.by 1
    end

    it "touches on driver's updated_at in DriverQueue" do
      expect{ DriverCallHandler.call_next }.to change{ CallQueue.find_by(driver: driver).updated_at }
    end
  end

  describe 'accepts_call'
  describe 'refuses_call'
  describe 'ends_call'
end
