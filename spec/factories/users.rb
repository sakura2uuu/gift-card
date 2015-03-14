FactoryGirl.define do
  factory :user do
    sequence(:name) {|n| "Test Name #{n}"}
    sequence(:email) {|n| "test#{n}@test.com"}
    gender 'Female'
  end
end
