require 'spec_helper'

describe SessionsController do
  let(:user_attrs) { { email: "me@example.com", password: "testing123" } }
  let!(:user) { User.create(user_attrs) }

  context "sign in" do
    it "should create a session" do
      post :create, user_attrs
      expect(session[:user_id]).to eq user.id
    end
  end

  context "sign out" do
    it "should clear the session" do
      delete :destroy, id: user.id
      expect(session.empty?).to be_true
    end
  end

end
