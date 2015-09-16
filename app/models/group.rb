class Group < ActiveRecord::Base
  has_many :articles
  has_many :memberships
  has_many :users, through: :memberships

  validates :name, uniqueness: true

  def admin
    admin_id = self.memberships.find_by(access_level: "admin").user_id
    User.find_by(id: admin_id)
  end

  def has_member(user)
    !(self.users.find_by(id: user.id).empty?)
  end
end
