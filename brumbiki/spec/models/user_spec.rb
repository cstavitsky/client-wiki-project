# require_relative '../spec_helper'
# require_relative '../rspec/rails'
require 'rails_helper'

  describe User do

    let (:user)  {User.new(email: "test@test.com", full_name: "Bob", password: "testing")}

    context "when the password is invalid" do
      it "should not allow a password with less than 6 characters" do
        user.password = "123"
        expect(user.valid?).to be_falsey
      end
    end


  end
