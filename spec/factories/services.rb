FactoryBot.define do
  factory :service do
    name { Faker::Lorem.word }
    service { 'postgres' }
  end
end
