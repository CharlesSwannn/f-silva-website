class Film < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :vimeo_id, presence: true


  has_many_attached :display_photos
  has_one_attached :cover_photo
end
