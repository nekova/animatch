# Read about factories at https://github.com/thoughtbot/factory_girl
require 'json'

FactoryGirl.define do
  factory :anime do
    title
    creator
  end
end
