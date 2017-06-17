FactoryGirl.define do
  factory :review do
    title { Faker::Lorem.word }
    body { Faker::Lorem.sentences }
    name { Faker::StarWars.character }
    email { Faker::Internet.email }
  end
end