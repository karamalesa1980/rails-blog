class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 4000 }

  belongs_to :article
  default_scope { order("created_at DESC") }
end
