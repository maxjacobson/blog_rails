class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id, :author_to_add
  has_many :comments
  belongs_to :author

  def body_paragraphized
    self.body.split("\n").collect{|paragraph| "<p>#{paragraph}</p>"}.join("\n")
  end

  def author_to_add=(author_name)
    self.author = Author.new(name: author_name) unless author_name.empty?
  end

end
