# spec/views/foods/index_spec.rb

require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  before(:each) do
    # Create test data using FactoryBot
    @food1 = FactoryBot.create(:food, name: 'apple', measurement_unit: 'unit', price: 5, quantity: 3)
    @food2 = FactoryBot.create(:food, name: 'beans', measurement_unit: 'kg', price: 9, quantity: 5)
    
    assign(:foods, [@food1, @food2])  # Assign the test data to the view's instance variable
  end

  it 'renders the Foods page' do
    render
    expect(rendered).to have_content('Foods page')

    # Check if the page displays the created records
    expect(rendered).to have_content(@food1.name)
    expect(rendered).to have_content(@food1.measurement_unit)
    expect(rendered).to have_content(@food1.price)

    expect(rendered).to have_content(@food2.name)
    expect(rendered).to have_content(@food2.measurement_unit)
    expect(rendered).to have_content(@food2.price)
  end
end
