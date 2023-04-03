class Commercial < ApplicationRecord
  validates :title, presence: true
  validates :vimeo_id, presence: true
  validates :year, presence: true

  has_many_attached :photos
end
