class Recipe < ApplicationRecord
  belongs_to :user
  has_many_attached :food_img

  validates :user_id, :description, presence: true
end
