class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :food_img
  after_initialize :attach_default_food_img

  validates :user_id, :description, :title, presence: true

  private

  def attach_default_food_img
    food_img.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default_food_img.png')), filename: 'default_food_img.png', content_type: 'image/png') unless food_img.attached?
  end

end
