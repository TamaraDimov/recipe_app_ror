# spec/factories/recipes.rb

FactoryBot.define do
  factory :recipe do
    sequence(:name) { |n| "Recipe #{n}" }
    preparation_time_minutes { Faker::Number.between(from: 10, to: 60) }
    cooking_time_minutes { Faker::Number.between(from: 10, to: 60) }
    description { Faker::Lorem.paragraph }
    is_public { [true, false].sample }
    user
  end
end
