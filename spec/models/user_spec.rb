require 'rails_helper'

describe User do
  describe "generate_api_key" do
    let(:user) { create(:user) }

    it "creates an api key" do
      expect(user.key).to be
    end
  end
end
