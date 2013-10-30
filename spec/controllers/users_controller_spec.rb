require 'spec_helper'

describe UsersController do

  let(:user_attrs) { { email: "me@example.com", password: "testing123" } }


  context "sign up" do

    it "should create a new user" do
      expect {
        post :create, user: user_attrs
      }.to change(User, :count).by(1)
    end

  end

end
