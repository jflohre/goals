require 'factory_girl'
FactoryGirl.define do
  factory :user do
  email "foo@example.com"
  username "foo"
  password "secret88"
  end

  factory :goal do
    id 1
    name "Web Developer"
  end


end