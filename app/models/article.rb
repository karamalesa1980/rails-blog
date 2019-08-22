class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 140 }
  validates :text, presence: true, length: { maximum: 4000 }

  mount_uploader :picture, PictureUploader 

  has_many :comments, dependent: :destroy
  default_scope { order("created_at DESC") }

  def subject
    title 
  end  

  def last_comment
    comments.last
  end
end
