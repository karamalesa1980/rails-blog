class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_many :comments
  default_scope { order("created_at DESC") }
end
