require 'rails_helper'

describe Article do

  let (:article) {Article.new(group_id: 1)}


  context "validations" do
    it "requires a group"
  end

  context "administrator privileges" do
    it "can only be deleted by an administrator"

    it "can be created by anyone"
  end

end
