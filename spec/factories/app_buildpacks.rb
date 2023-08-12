FactoryBot.define do
  factory :app_buildpack do
    name { Faker::Lorem.word }
    app
  end
end
