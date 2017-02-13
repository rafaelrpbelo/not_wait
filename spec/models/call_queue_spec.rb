require 'rails_helper'

describe CallQueue do
  it { is_expected.to belong_to(:driver) }

  describe 'scopes' do
    context '.ordered' do
      before do
        DriverCreator.new(name: 'Jhon').save
        DriverCreator.new(name: 'Mary').save
        DriverCreator.new(name: 'Julian').save

        CallQueue.first.touch
      end

      subject { described_class.ordered }

      it 'returns drivers ordered by updated_at asc' do
        expect(subject.first.driver.name).to eq 'Mary'
        expect(subject.second.driver.name).to eq 'Julian'
        expect(subject.third.driver.name).to eq 'Jhon'
      end
    end
  end
end
