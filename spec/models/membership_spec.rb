require 'rails_helper'

describe Membership do


  context "validations" do

    it "requires a group_id" do
      membership = Membership.new(user_id: 1, access_level: "member", status: "active")
    end

    it "does not allow more than one membership to the same group for a given user"


  end

end
