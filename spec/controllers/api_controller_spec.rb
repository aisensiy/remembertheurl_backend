require 'rails_helper'

RSpec.describe ApiController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      data = [
        {
          title: 'example',
          url: 'http://example.org',
          start_ts: 1423889149724,
          duration: 465147
        },
        {
          title: 'example2',
          url: 'http://example.com',
          start_ts: 1423911502321,
          duration: 4647
        }
      ]
      count_before = View.count
      post :create, data: data.to_json
      count_after = View.count
      expect(count_after).to eq count_before + data.size
      expect(response).to have_http_status(:created)
    end
  end

end
