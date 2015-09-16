class Group < ActiveRecord::Base
  has_many :articles
  has_many :memberships
  has_many :users, through: :memberships


  validates :name, uniqueness: true

  def has_member(user)
    self.users.find_by(id: user.id) != nil
  end
end
