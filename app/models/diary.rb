class Diary < ApplicationRecord

  belongs_to :pet
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  has_many :notifications, dependent: :destroy

  attachment :image

  validates :body, presence: true


  def favorited_by?(pet, diary)
    DiaryFavorite.where(pet_id: pet.id, diary_id: diary.id).exists?
  end

  def create_notification_by(pet)
    notification = current_owner.pet.active_notifications.new(
      diary_id: id,
      visited_id: pet_id,
      action: "favorite"
      )
    notification.save if notification.valid?
  end

end
