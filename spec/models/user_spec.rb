require 'spec_helper'

describe User do
  let(:user_attrs) { { email: "me@example.com", password: "testing123" } }

  context "#save" do

    let(:user) { User.new }

    it "should raise an error if no email is given" do
      user.password = user_attrs[:password]
      expect { user.save! }.to raise_error
    end

  end

  context "#authenticate" do
    let(:user) { User.create(user_attrs) }

    it "should not be false if a correct password is given" do
      retval = user.authenticate(user_attrs[:password])
      expect(retval).not_to be_false
    end

  end

end