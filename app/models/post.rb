class Post < ActiveRecord::Base
  belongs_to :post_category
  belongs_to :author
  belongs_to :reviser

  extend FriendlyId
  
  friendly_id :title, use: :slugged

  default_scope { where(publish: true, revised: true) }
  
  validates_presence_of :title, :content, :post_category

  mount_uploader :thumb, ThumbUploader
end

