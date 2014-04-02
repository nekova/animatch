require 'spec_helper'

describe "Animes" do
  before do
    create(:anime, creator: { "programmer" => "nekova" } )
    get "/api/animes.json"
  end

  describe "GET /api/animes" do
    it "200 OK" do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end
