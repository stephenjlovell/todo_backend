require 'faker'

FactoryGirl.define do

  factory :todo do
    sequence(:title) { Faker::Hacker.say_something_smart }
    sequence(:completed) { Faker::boolean }
  end
  
end
