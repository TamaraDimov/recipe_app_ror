# spec/views/recipes/index_spec.rb

require 'rails_helper'

RSpec.describe "recipes/index.html.erb", type: :view do
  it "displays a list of recipes" do
    # Stubbing data for @recipes
    recipe1 = double('Recipe', id: 1, name: 'Recipe 1', description: 'Description 1')
    recipe2 = double('Recipe', id: 2, name: 'Recipe 2', description: 'Description 2')
    assign(:recipes, [recipe1, recipe2])

    render

    expect(rendered).to have_content('Here is a list of my recipes:')
    expect(rendered).to have_content('Recipe 1')
    expect(rendered).to have_content('Description 1')
    expect(rendered).to have_content('Recipe 2')
    expect(rendered).to have_content('Description 2')

    # Check if the links are present with the correct paths
    expect(rendered).to have_link('Recipe 1', href: recipe_path(1))
    expect(rendered).to have_link('Recipe 2', href: recipe_path(2))
  end
end
