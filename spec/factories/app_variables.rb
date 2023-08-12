FactoryBot.define do
  factory :app_variable do
    app
    name { Faker::Lorem.word }
    value { Faker::Lorem.word }
  end
end
