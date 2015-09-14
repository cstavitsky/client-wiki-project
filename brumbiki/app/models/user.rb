class User < ActiveRecord::Base
  has_many :groups, through: :memberships
  has_many :versions, foreign_key: :author_id
end
