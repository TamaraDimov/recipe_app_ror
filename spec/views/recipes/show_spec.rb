# spec/views/recipes/show.html.erb_spec.rb

require 'rails_helper'

RSpec.describe 'recipe', type: :view do
  before(:each) do
    @recipe = FactoryBot.create(:recipe)
    @recipe_foods = FactoryBot.create_list(:recipe_food, 3, recipe: @recipe)
  end

  it 'displays the recipe details' do
    render template: 'recipes/show'

    expect(rendered).to have_content(@recipe.name)
    expect(rendered).to have_content("Preparation time: #{@recipe.preparation_time_minutes} mins")
    expect(rendered).to have_content("Cooking time: #{@recipe.cooking_time_minutes} mins")
    expect(rendered).to have_content(@recipe.description)

    @recipe_foods.each do |recipe_food|
      expect(rendered).to have_content(recipe_food.food.name)
      expect(rendered).to have_content(recipe_food.quantity)
      expect(rendered).to have_content(recipe_food.food.price)
      expect(rendered).to have_link('Delete', href: recipe_food_path(recipe_food))
    end
  end

  it 'displays a message when there are no food ingredients' do
    @recipe_foods = []

    render template: 'recipes/show'

    expect(rendered).to have_content('you have no food ingredients yet, click on "Add ingredient" to add to the list')
  end
end
