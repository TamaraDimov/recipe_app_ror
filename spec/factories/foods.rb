# spec/factories/foods.rb

FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "Food #{n}" }
    measurement_unit { 'grams' }
    price { Faker::Number.decimal(l_digits: 2) }
    quantity { Faker::Number.between(from: 1, to: 10) }
  end
end
