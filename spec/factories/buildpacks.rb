FactoryBot.define do
  factory :buildpack do
    name { Faker::Lorem.word }
    buildpack { Faker::Lorem.word }
  end
end
