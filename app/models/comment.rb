class Comment < ApplicationRecord

  belongs_to :pet
  belongs_to :diary
  belongs_to :memory

  validates :comment, presence: true

end
