# frozen_string_literal: true

class Micropost < ApplicationRecord
  belongs_to :user
  # 投稿の順序を調整
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  mount_uploader :picture, PictureUploader
  validate :picture_size

  has_many :likes, dependent: :destroy
  has_many :good_users, through: :likes, source: :user

  def good(user)
    likes.create(user_id: user.id)
  end

  def ungood(user)
    likes.find_by(user_id: user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def good?(user)
    good_users.include?(user)
  end

  

  private

  # アップロードされた画像のサイズをバリデーションする
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, 'should be less than 5MB')
    end
  end


end
