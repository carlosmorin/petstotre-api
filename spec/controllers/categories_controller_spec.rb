# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
  let(:pets) do
    [
      attributes_for(:pet, name: 'Palomas', status: :available),
      attributes_for(:pet, name: 'Patos', status: :available)
    ]
  end

  let(:valid_attributes) do
    { name: 'Aves',
      pets_attributes: pets }
  end

  let(:invalid_attributes) do
    {
      name: nil
    }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      Category.create! valid_attributes
      get(:index)
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      category = Category.create! valid_attributes
      get(:show, params: { id: category.id })
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Category' do
        expect {
          post(:create, params: { category: valid_attributes })
        }.to change(Category, :count).by(1)
      end

      it 'creates a new Category increment Pets' do
        expect {
          post(:create, params: { category: valid_attributes })
        }.to change(Pet, :count).by(2)
      end

      it 'renders a JSON response with the new category' do
        post(:create, params: { category: valid_attributes })
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new category' do
        post(:create, params: { category: invalid_attributes })
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested category' do
        category = Category.create! valid_attributes
        params = { id: category.to_param, category: { name: 'Voladores' } }

        put(:update, params: params)
        category.reload
        expect(category.name).to eq 'Voladores'
      end

      it 'renders a JSON response with the category' do
        category = Category.create! valid_attributes
        params = { id: category.to_param, category: valid_attributes }

        put :update, params: params
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the category' do
        category = Category.create! valid_attributes
        params = { id: category.to_param, category: invalid_attributes }

        put :update, params: params
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested category' do
      category = Category.create! valid_attributes
      expect {
        delete(:destroy, params: { id: category.to_param })
      }.to change(Category, :count).by(-1)
    end
  end
end
