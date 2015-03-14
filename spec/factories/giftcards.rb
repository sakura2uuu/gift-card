FactoryGirl.define do
  factory :giftcard do
    sequence(:title) {|n| "Title #{n}" }
    sequence(:message) {|n| "Message Body #{n}" }
    association :user, factory: :user
  end
end
