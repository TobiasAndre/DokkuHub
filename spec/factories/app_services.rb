FactoryBot.define do
  factory :app_service do
    app
    name { Faker::Lorem.word }
  end
end
