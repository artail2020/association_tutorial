class Tweet < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :comments
  mount_uploader :image, ImageUploader

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
