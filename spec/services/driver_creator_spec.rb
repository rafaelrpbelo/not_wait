require 'rails_helper'

describe DriverCreator do
  let(:params) { {name: 'New Driver'} }

  subject { described_class.new(params) }

  describe '#save' do
    it 'creates a new driver' do
      expect{ subject.save }.to change{ Driver.count }.by 1
    end

    it 'creates a new driver with the attributes passed by params' do
      subject.save
      expect(Driver.last).to have_attributes({name: 'New Driver'})
    end

    it 'creates a new CallQueue' do
      expect{ subject.save }.to change{ CallQueue.count }.by 1
    end
  end
end
