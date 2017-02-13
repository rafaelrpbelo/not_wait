require 'rails_helper'

describe DriverCall do
  it { is_expected.to belong_to(:driver) }
  it { is_expected.to validate_presence_of(:final_time) }
end
