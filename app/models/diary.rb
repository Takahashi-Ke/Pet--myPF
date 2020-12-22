class Diary < ApplicationRecord

  belongs_to :pet
  has_many :diary_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :image

  validates :body, presence: true

end
