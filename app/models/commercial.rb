class Commercial < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
end
