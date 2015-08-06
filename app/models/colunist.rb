class Colunist < ActiveRecord::Base
  belongs_to :author

  default_scope { where(publish: true)}
  validates_presence_of :title, :description, :author
end
