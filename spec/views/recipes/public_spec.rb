# spec/views/recipes/public_spec.rb

require 'rails_helper'

RSpec.describe "recipes/public.html.erb", type: :view do
  it "displays a list of public recipes" do
    # Stubbing data for @recipes
    recipe1 = double('Recipe', id: 1, name: 'Recipe 1', user: double('User', name: 'User 1'), foods: double('Foods', count: 3, sum: 15))
    recipe2 = double('Recipe', id: 2, name: 'Recipe 2', user: double('User', name: 'User 2'), foods: double('Foods', count: 5, sum: 25))
    assign(:recipes, [recipe1, recipe2])

    render template: "recipes/public"

    expect(rendered).to have_content('Recipe 1')
    expect(rendered).to have_content('User 1')
    expect(rendered).to have_content('Recipe 2')
    expect(rendered).to have_content('User 2')

    # Check if the links are present with the correct paths
    expect(rendered).to have_link('Recipe 1', href: recipe_path(1))
    expect(rendered).to have_link('Recipe 2', href: recipe_path(2))

    # Check if the recipe details are displayed
    expect(rendered).to have_content('total number of foods: 3')
    expect(rendered).to have_content('15')
    expect(rendered).to have_content('total number of foods: 5')
    expect(rendered).to have_content('25')
  end
end
