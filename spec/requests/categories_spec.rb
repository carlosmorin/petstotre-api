# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET api/v1/categories' do
    it 'retuns categories list' do
      get api_v1_categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET api/v1/categories/:id' do
    let(:category) { create :category }
    it 'retuns categories list' do
      get api_v1_category_path(category.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST api/v1/categories', type: :request do
    before do
      post '/api/v1/categories', params: { category: { name: 'Aves' } }
    end

    it 'returns the catgeory name' do
      expect(JSON.parse(response.body)['name']).to eq('Aves')
    end

    it 'returns a created status' do
      expect(response).to have_http_status(:created)
    end
  end

  describe 'PUT /api/v1/categories/:id' do
    before(:each) do
      @category = create(:category)
    end

    it 'updates a category' do
      params = { category: { name: 'Gatos' } }
      put "/api/v1/categories/#{@category.id}", params: params

      expect(response.status).to eq(200)
      expect(Category.find(@category.id).name).to eql('Gatos')
    end
  end

  describe 'DELETE /api/v1/categories/:id' do
    before do
      @category = create(:category)
    end

    it 'returns a 204 status' do
      delete "/api/v1/categories/#{@category.id}"

      expect(response.status).to eq(204)
    end
  end
end
