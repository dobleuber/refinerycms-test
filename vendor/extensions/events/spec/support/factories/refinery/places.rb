
FactoryGirl.define do
  factory :place, :class => Refinery::Events::Place do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

