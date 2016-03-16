require 'rails_helper'

RSpec.describe "Condos", type: :request do
  describe "GET /condos" do
    it "works! (now write some real specs)" do
      get condos_path
      expect(response).to have_http_status(200)
    end
  end
end
