class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :versions, foreign_key: :author_id

  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validate :password_requirements


  def password_requirements
    unless password.length > 6 && password =~ /[!@#$%^&*]/
      errors.add(:password, "must be at least 6 characters in length and include one of (!@#$%^&*)")
    end
  end

end
