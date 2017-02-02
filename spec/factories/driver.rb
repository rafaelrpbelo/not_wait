FactoryGirl.define do
  factory :driver do
    sequence(:name) {|i| "Driver #{i}"}
  end
end
