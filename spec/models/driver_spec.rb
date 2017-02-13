require 'rails_helper'

describe Driver do
  it { is_expected.to validate_presence_of(:name) }

  describe '#to_s' do
    subject { Driver.create(name: 'Driver 1') }

    it "returns the driver's name" do
      expect(subject.to_s).to eq 'Driver 1'
    end
  end
end
