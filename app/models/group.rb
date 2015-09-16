class Group < ActiveRecord::Base
  has_many :articles
  has_many :memberships
  has_many :users, through: :memberships

  validates uniqueness: true
end