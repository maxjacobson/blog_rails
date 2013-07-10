class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :post_id, :author_to_add
  belongs_to :post
  belongs_to :author
  def body_paragraphized
    self.body.split("\n").collect{|paragraph| "<p>#{paragraph}</p>"}.join("\n")
  end
  def author_to_add=(author_name)
    self.author = Author.new(name: author_name) unless author_name.empty?
  end
end
