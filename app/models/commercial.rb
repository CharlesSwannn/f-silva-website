class Commercial < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true

  has_many_attached :photos
end
