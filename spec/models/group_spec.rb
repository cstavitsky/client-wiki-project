require 'rails_helper'

describe Group do

  let (:group) { Group.new(group_name: "City All-Stars") }

  context "validations" do

    it "does not allow multiple groups with the same name"

    it "has at least one member"

    it "has at least one administrator"

    it "allows for multiple administrators"

  end


end
