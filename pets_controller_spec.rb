etrequire 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
  before do
    @category = create :catgory
  end
  
  let(:valid_attributes) do
    {
      name: "Perros",
      pets_attributes: pets
    }
  end

  let(:invalid_attributes) do
    {
      name: nil
    }
  end

  describe "GET #index" do
    it "returns a success response" do
      Category.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      category = Category.create! valid_attributes
      get :show, params: { id: category.id }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Category" do
        expect {
          post :create, params: {category: valid_attributes}
        }.to change(Category, :count).by(1)
      end

      it "creates a new Category increment Pets" do
        expect {
          post :create, params: {category: valid_attributes}
        }.to change(Pet, :count).by(2)
      end

      it "renders a JSON response with the new category" do
        post :create, params: {category: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new category" do
        post :create, params: {category: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end
e
end
