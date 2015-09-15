require 'rails_helper'

describe Version do

  let (:user)  {User.new(email: "test@test.com", full_name: "Bob", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "member")}
  let (:super_user) {User.new(email: "yahweh@yahoo.com", full_name: "God", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "admin")}
  let (:version_one) {Version.new(article_id: 1, title: "Rules", body: "blah blah blah")}


  context "validations" do

    it "requires all fields"

    it "checks that its parent article actually exists before beign created"

  end

  context "version association" do

    it "does not allow non-members of a group to create new versions" do
      pending
      impostor = User.new(email: "faker@faker.com", full_name: "Bubba", password: "testing")
      expect{impostor.versions << version_one}.to raise_error
    end

  end

  context "administrator privileges" do

  end



end
