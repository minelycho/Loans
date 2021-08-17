FactoryBot.define do
  require 'faker'
  factory :user do
    email { Faker::Internet.email}
    password {'Passw0rd@'}
  end
end
