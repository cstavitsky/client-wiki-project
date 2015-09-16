require 'rails_helper'

describe Article do

  context "validations" do
    let (:article) {Article.new(group_id: nil)}
    it "requires a group" do
      expect(article.valid?).to be_falsey
    end
  end

  context "#most_recent" do
    let(:article) {Article.create(group_id: 1)}
    let (:old_version) {article.versions.create(title: "Going To My Grandmother's Church")}
    let (:new_version) {article.versions.create(title: "Phil's Pool")}
    it "returns its version that was created most recently" do
      correct = new_version
      expect(article.most_recent).to eq(correct)
    end
  end

end
