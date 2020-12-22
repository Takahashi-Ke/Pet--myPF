class Diary < ApplicationRecord

  belongs_to :pet
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy

  attachment :image

  validates :body, presence: true


  def favorited_by?(pet, diary)
    DiaryFavorite.where(pet_id: pet.id, diary_id: diary.id).exists?
  end

end
