class Version < ActiveRecord::Base
  belongs_to :author, class_name: "User" # :)
  belongs_to :article

  validates :title, :presence => :true
  validate :article_exists


  def format_date
    month = self.created_at.month
    day = self.created_at.day
    year = self.created_at.year
    if self.created_at.hour > 12
      hour  = self.created_at.hour - 12
      time = self.created_at.strftime("#{hour}:%M %p")
    else
      time = self.created_at.strftime("%H:%M %p")
    end
    "#{month}/#{day}/#{year} #{time}"
  end

  def article_exists
    unless Article.find_by(id: self.article_id)
      errors.add(:article, "must be associated with an existing article")
    end
  end
end
