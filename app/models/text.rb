class Text < ApplicationRecord
  enum :type, %i[text article]
  validates :title, presence: true
  validates :content, presence: true
end
