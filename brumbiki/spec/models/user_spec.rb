require 'rails_helper'

describe User do

  let (:user)  {User.new(email: "test@test.com", full_name: "Bob", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "member")}
  let (:super_user) {User.new(email: "yahweh@yahoo.com", full_name: "God", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "admin")}
  let (:article) {Article.new(group_id: 1)}
  let (:version) {Version.new(article_id: 1, title: "Rules", body: "blah blah blah")}

  context "with invalid user signup info" do
    it "should not allow a password with less than 6 characters" do
      user.password = "123"
      expect(user.valid?).to be_falsey
    end

    it "should not save when fields are empty" do
      expect(User.new.save).to_not be_valid
    end

    it "should return error messages that explain why the registration failed" do
      person = User.create(full_name: "Steve-O")
      expect(person.errors.full_messages).to include("must be at least 6 characters in length and include one of (!@#$%^&*)")
    end

  end

  context "group membership association" do
    it "allows a user to join a new group through memberships" do
      user.groups << group
      expect(user.groups).to include(group)
      expect(user.memberships.length).to eq(1)
    end

  context "version association" do
    it "only allows user to create a new article version if a member of a group" do
      impostor = User.new(email: "faker@faker.com", full_name: "Bubba", password: "testing")
      expect{impostor.versions << version}.to raise_error
    end

    it "does not allow a use"
  end



  end






end
