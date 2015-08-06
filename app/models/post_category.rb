class PostCategory < ActiveRecord::Base
  has_many :posts
  
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  
  default_scope { where(publish: true)}

  validates_presence_of :name
end
