require 'rails_helper'

RSpec.describe "Pets", type: :request do
  let(:category) { create :category }

  let(:valid_attributes) do
    {
      name: "Perico",
      status: "available",
      category_id: category.id
    }
  end

  let(:invalid_attributes) do
    {
      name: nil,
      status: nil,
      category_id: nil
    }
  end

  describe "GET api/v1/pets" do
    it "renders a successful response" do
      get api_v1_pets_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET api/v1/pets/:id" do
    let(:pet) { create :pet }
    it "renders a successful response" do
      get api_v1_pet_path(pet)
      expect(response).to be_successful
    end
  end

  describe "POST api/v1/pets" do
    context "with valid parameters" do
      it "creates a new Pet" do
        expect {
          post api_v1_pets_path, params: { pet: valid_attributes }
        }.to change(Pet, :count).by(1)
      end

      it "renders a JSON response with the new pet" do
        post api_v1_pets_path, params: { pet: valid_attributes }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Pet" do
        expect {
          post api_v1_pets_path, params: { pet: invalid_attributes }
        }.to change(Pet, :count).by(0)
      end

      it "renders a JSON response with errors for the new pet" do
        post api_v1_pets_path, params: { pet: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "PUT /api/v1/pets/:id" do
    before(:each) do
      @pet = create(:pet)
    end

    it 'updates a category' do
      put "/api/v1/pets/#{@pet.id}", params: { pet: { name: 'Tucan' } }

      expect(response.status).to eq(200)
      expect(Pet.find(@pet.id).name).to eql('Tucan')
    end
  end

  describe "DELETE /api/v1/pets/:id" do
    before do
      @pet = create(:pet)
    end

    it 'returns a 204 status' do
      delete "/api/v1/pets/#{@pet.id}"

      expect(response.status).to eq(204)
    end
  end
end
