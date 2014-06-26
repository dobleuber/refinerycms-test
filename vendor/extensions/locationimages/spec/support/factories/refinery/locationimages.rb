
FactoryGirl.define do
  factory :locationimage, :class => Refinery::Locationimages::Locationimage do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

