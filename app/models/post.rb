class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id
  has_many :comments
  belongs_to :author

  def body_paragraphized
    self.body.split("\n").collect{|paragraph| "<p>#{paragraph}</p>"}.join("\n")
  end

end
