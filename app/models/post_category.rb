class PostCategory < ActiveRecord::Base
  has_many :posts
  
  default_scope { where(publish: true)}

  validates_presence_of :name
end
