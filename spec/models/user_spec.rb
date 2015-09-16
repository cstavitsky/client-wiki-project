require 'rails_helper'

describe User do

  let (:user)  {User.new(email: "test@test.com", full_name: "Bob", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "member")}
  let (:super_user) {User.new(email: "yahweh@yahoo.com", full_name: "God", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "admin")}

  context "validations" do

    it "should not allow multiple users with the same login info" do
      multiple = User.new(email: "test@test.com", full_name: "Imposter Jones", password: "testing")
      expect(multiple.save).to be_falsey
    end

    it "should not allow a password with less than 6 characters" do
      user.password = "123"
      expect(user.valid?).to be_falsey
    end

    it "should not save when fields are empty" do
      user.password = ""
      expect(user.valid?).to be_falsey
    end

    it "should return error messages that explain why the registration failed" do
      person = User.create(full_name: "Steve-O")
      p person.errors.full_messages
      expect(person.errors.full_messages).to include("Password must be at least 6 characters in length and include one of (!@#$%^&*)")
    end

  end


end
