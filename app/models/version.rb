class Version < ActiveRecord::Base
  belongs_to :author, class_name: "User" # :)
  belongs_to :article

  def format_date
    self.created_at.to_s[0..10]
  end

end
