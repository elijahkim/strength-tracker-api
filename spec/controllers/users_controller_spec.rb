require "rails_helper"

describe UsersController do
  describe "/users" do
    it "Returns all the users with a proper api key" do
      user = create(:user)

      get :index, format: :json, key: user.key
      body = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(body).to eq "users"=>[{"id"=>user.id, "email"=>user.email}]
    end
  end
end
