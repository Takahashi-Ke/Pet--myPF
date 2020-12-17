class Pet < ApplicationRecord
  
  belongs_to :owner
  has_many :pet_personalities, dependent: :destroy
  
  attachment :image
  validates :name, presence: true
  
  enum gender: {
    男の子: 1,
    女の子: 2
  }
  
end
