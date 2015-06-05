require "rails_helper"

describe UsersController do
  let(:user) { create(:user) }

  describe "/users" do
    it "Returns all the users with a proper api key" do
      get :index, format: :json, key: user.key
      body = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(body).to eq "users"=>[{"id"=>user.id, "email"=>user.email}]
    end
  end

  describe "/users/id" do
    it "Returns the user" do
      get :show, id: user.id, format: :json, key: user.key
      body = JSON.parse(response.body)

      expect(body).to eq "user"=>{"id"=>user.id, "email"=>user.email}
    end
  end
end
