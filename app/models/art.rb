class Art < ApplicationRecord
  has_many_attached :images
  validates :title, presence: true
  validates :images, length: { minimum: 1, maximum: 10, message: "は1枚以上10枚以下にしてください" }
end
