# spec/models/recipe_food_spec.rb

require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  # Define factories for associated models (food and recipe) if not already defined
  let(:food) { FactoryBot.create(:food) }
  let(:recipe) { FactoryBot.create(:recipe) }

  subject { FactoryBot.create(:recipe_food, food:, recipe:) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a quantity' do
    subject.quantity = nil
    expect(subject).not_to be_valid
  end

  it 'is associated with a food' do
    expect(subject.food).to eq(food)
  end

  it 'is associated with a recipe' do
    expect(subject.recipe).to eq(recipe)
  end
end
