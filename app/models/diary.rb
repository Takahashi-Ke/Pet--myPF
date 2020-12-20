class Diary < ApplicationRecord

  belongs_to :pet

  attachment :image

  validates :body, presence: true

end
