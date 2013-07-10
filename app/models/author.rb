class Author < ActiveRecord::Base
  attr_accessible :name
  belongs_to :post
  belongs_to :comment
end
