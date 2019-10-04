class Article < ApplicationRecord
  belongs_to :user
  has_one :recipe
  enum status: { draft: 'draft', published: 'published', deleted: 'deleted' }
end
