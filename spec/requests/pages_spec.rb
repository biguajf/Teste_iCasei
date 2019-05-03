require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /contato" do
    it "works!" do
      get contato_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /sobre" do
    it "works!" do
      get sobre_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /relatorio" do
    it "works!" do
      get relatorio_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /home" do
    it "works!" do
      get home_path
      expect(response).to have_http_status(200)
    end
  end
end