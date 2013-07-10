class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :post_id
  has_one :author
  belongs_to :post
end
