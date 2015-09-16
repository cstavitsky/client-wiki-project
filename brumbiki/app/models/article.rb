class Article < ActiveRecord::Base
  belongs_to :group
  has_many :versions

  def most_recent
    self.versions.last
  end

  def article_group
    self.group_id
  end

  validates :group_id, presence: true
  validates_numericality_of :group_id

end
