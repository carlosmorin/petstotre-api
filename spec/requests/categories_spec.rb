require "rails_helper"

RSpec.describe "Categories", type: :request do
  describe "GET api/v1/categories" do
    it "retuns categories list" do
      get api_v1_categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET api/v1/categories/:id" do
    let(:category) { create :category }
    it "retuns categories list" do
      get api_v1_category_path(category.id)
      expect(response).to have_http_status(200)
    end
  end

end
