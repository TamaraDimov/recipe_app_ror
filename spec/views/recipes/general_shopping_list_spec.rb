# spec/views/shopping_list/index.html.erb_spec.rb

require 'rails_helper'

RSpec.describe 'shopping_list/index.html.erb', type: :view do
  it 'displays the shopping list' do
    # Stubbing data for @needed_items
    needed_items = [['Item 1', 2, 5, ' lbs'], ['Item 2', 3, 2, ' pieces']]
    assign(:needed_items, needed_items)

    render template: 'recipes/general_shopping_list'

    expect(rendered).to have_content('Shopping list')
    expect(rendered).to have_selector('.amount', text: 'Amount of food to buy: 2')

    # Check if the table headers are displayed
    expect(rendered).to have_content('Food')
    expect(rendered).to have_content('Quantity')
    expect(rendered).to have_content('Price')

    # Check if the shopping list items are displayed
    expect(rendered).to have_content('Item 1')
    expect(rendered).to have_content('2 lbs')
    expect(rendered).to have_content('10')
    expect(rendered).to have_content('Item 2')
    expect(rendered).to have_content('3 pieces')
    expect(rendered).to have_content('6')
  end
end
