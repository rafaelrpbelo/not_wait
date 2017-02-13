FactoryGirl.define do
  factory :driver_call do
    association :driver
    final_time { Time.now + DriverCall::MAX_WAIT_TIME }
  end
end
