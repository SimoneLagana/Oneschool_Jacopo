require 'rails_helper'

RSpec.describe "Meetings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/meeting/index"
      expect(response).to have_http_status(:success)
    end
  end

end
