require 'rails_helper'

RSpec.describe ApiController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:created)
    end
  end

end
