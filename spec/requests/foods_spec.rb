require 'rails_helper'

RSpec.describe 'FoodsController', type: :request do
  describe 'GET /index' do
    before do
      user = FactoryBot.create(:user)
      sign_in user
      get foods_path
    end

    it 'returns a successful response' do
      expect(response).to have_http_status(200)
    end

    it 'correct template is rendered' do
      expect(response).to render_template(:index)
    end

    it 'the response body includes correct placeholder text' do
      expect(response.body).to include('foods page')
    end
  end

  describe 'GET /show' do
    before do
      user = FactoryBot.create(:user)
      sign_in user
      food = FactoryBot.create(:food)
      get food_path(food)
    end

    it 'returns a successful response' do
      expect(response).to have_http_status(200)
    end

    it 'correct template is rendered' do
      expect(response).to render_template(:show)
    end

    it 'the response body includes correct placeholder text' do
      expect(response.body).to include("Measurement unit:")
    end
  end
end
