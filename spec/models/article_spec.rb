require 'rails_helper'

describe Article do

  let (:article) {Article.new(group_id: 1)}


  context "validations" do

    it "requires a group"

  end

  context "associations" do
    it "deleting an article should delete all associated content"
  end

end
