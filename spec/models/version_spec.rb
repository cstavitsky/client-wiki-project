require 'rails_helper'

describe Version do

  let(:article) {Article.create(group_id: 1)}
  let (:user)  {User.new(email: "test@test.com", full_name: "Bob", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "member")}
  let (:super_user) {User.new(email: "yahweh@yahoo.com", full_name: "God", password: "testing")}
  let (:membership) {user.memberships.create!(group_id: 1, type: "admin")}
  let (:version_one) {Version.new(article_id: 1, title: "Rules", body: "blah blah blah")}


  context "validations" do
    let(:no_title_version) {Version.new(article_id: 1)}
    let(:no_article_version) {Version.new(article_id: 500, title: "I am not real")}

    it "requires a title" do
      expect(no_title_version.valid?).to be_falsey
    end

    it "checks that its parent article actually exists before being created" do
      expect(no_article_version.valid?).to be_falsey
    end

  end

  context "version association" do
    pending
    it "does not allow non-members of a group to create new versions" do
      impostor = User.new(email: "faker@faker.com", full_name: "Bubba", password: "testing")
      expect{impostor.versions << version_one}.to raise_error
    end

  end

end
