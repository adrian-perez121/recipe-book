class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :food_img

  validates :user_id, :description, :title, presence: true
end
