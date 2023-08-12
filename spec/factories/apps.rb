FactoryBot.define do
  factory :app do
    name { Faker::Lorem.word }
    url { Faker::Internet.url }
    description { Faker::Lorem.sentence }
    is_active { Faker::Boolean.boolean }
    is_locked { Faker::Boolean.boolean }
  end
end
