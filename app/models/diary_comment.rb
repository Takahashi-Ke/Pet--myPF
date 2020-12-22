class DiaryComment < ApplicationRecord

  belongs_to :pet
  belongs_to :diary

  validates :comment, presence: true

end
