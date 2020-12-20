class Pet < ApplicationRecord

  belongs_to :owner
  has_many :pet_personalities, dependent: :destroy
  has_many :diaries, dependent: :destroy
  has_many :memories, dependent: :destroy

  accepts_nested_attributes_for :pet_personalities, allow_destroy: true

  self.inheritance_column = :_type_disabledrails

  attachment :image
  validates :name, presence: true

  enum gender: {
    男の子: 1,
    女の子: 2
  }

  enum type: {
    犬: 1,
    猫: 2,
    小動物: 3,
    鳥: 4,
    爬虫類: 5,
    魚: 6
  }

end
