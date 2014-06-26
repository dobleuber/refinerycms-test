
FactoryGirl.define do
  factory :menu, :class => Refinery::Menus::Menu do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

