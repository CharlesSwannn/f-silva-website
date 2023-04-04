class Commercial < ApplicationRecord
  validates :title, presence: true
  validates :vimeo_id, presence: true
  validates :year, presence: true
  has_one_attached :cover_photo
  has_many_attached :display_photos
end
