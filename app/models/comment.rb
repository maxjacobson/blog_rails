class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :post_id
  belongs_to :post
  belongs_to :author
  def body_paragraphized
    self.body.split("\n").collect{|paragraph| "<p>#{paragraph}</p>"}.join("\n")
  end
end
