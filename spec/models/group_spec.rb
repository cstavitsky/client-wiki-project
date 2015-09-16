require 'rails_helper'

describe Group do



  context "validations" do
    let (:group) { Group.create(name: "City All-Stars") }
    it "does not allow multiple groups with the same name" do
      group1 = group
      group2 = Group.new(name: "City All-Stars")
      expect(group2.valid?).to be_falsey
    end

    it "has at least one member" do
      #when we make a new group admin is auto-added
      pending
    end

    it "has at least one administrator"

    it "allows for multiple administrators"

  end


end
