class Article < ActiveRecord::Base
  belongs_to :group
  has_many :versions
end
