require 'rails_helper'

RSpec.describe Api::V1::PetsController, type: :controller do
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
			name: nil
		}
  end

	describe "GET #index" do
		it "returns a success response" do
			pet = Pet.create! valid_attributes
			get :index
			expect(response).to be_successful
		end
	end
	
	describe "GET #show" do
		it "returns a success response" do
			pet = Pet.create! valid_attributes
			get :show, params: { id: pet.id }
			expect(response).to be_successful
		end
	end

	describe "POST #create" do
		context "with valid params" do
			it "creates a new Pet" do
				expect {
					post :create, params: { pet: valid_attributes }
				}.to change(Pet, :count).by(1)
			end

			it "renders a JSON response with the new pet" do
				post :create, params: {pet: valid_attributes}
				expect(response).to have_http_status(:created)
				expect(response.content_type).to eq('application/json; charset=utf-8')
			end
		end

		context "with invalid params" do
			it "renders a JSON response with errors for the new pet" do
				post :create, params: {pet: invalid_attributes}
				expect(response).to have_http_status(:unprocessable_entity)
				expect(response.content_type).to eq('application/json; charset=utf-8')
			end
		end
	end

	describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        {
          name: "Tucan"
        }
      end

      it "updates the requested pet" do
        pet = Pet.create! valid_attributes
        put :update, params: {id: pet.to_param, pet: new_attributes}
        pet.reload
        expect(pet.name).to eq "Tucan"
      end

      it "renders a JSON response with the pet data" do
        pet = Pet.create! valid_attributes

        put :update, params: {id: pet.to_param, pet: valid_attributes}
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the pet" do
        pet = Pet.create! valid_attributes

        put :update, params: {id: pet.to_param, pet: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested pet" do
      pet = Pet.create! valid_attributes
      expect {
        delete :destroy, params: {id: pet.to_param}
      }.to change(Pet, :count).by(-1)
    end
  end

end