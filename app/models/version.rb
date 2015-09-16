class Version < ActiveRecord::Base
  belongs_to :author, class_name: "User" # :)
  belongs_to :article

  validates :title, :presence => :true
  validate :article_exists

  def format_date
    self.created_at.to_s[0..10]
  end

  def article_exists
    unless Article.find_by(id: self.article_id)
      errors.add(:article, "must be associated with an existing article")
    end
  end
end
