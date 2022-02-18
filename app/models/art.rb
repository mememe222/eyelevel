class Art < ApplicationRecord
  has_many_attached :images
  validates :title, presence: true
  validates :images, presence: true
end
