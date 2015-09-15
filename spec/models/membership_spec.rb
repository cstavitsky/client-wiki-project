require 'rails_helper'

describe Membership do


  context "validations" do

    it "requires all fields"

    it "does not allow more than one membership to the same group for a given user"


  end

  context "associations" do
    it "allows a user to join a new group through memberships" do
      user.groups << group
      expect(user.groups).to include(group)
      expect(user.memberships.length).to eq(1)
    end

  end

end
