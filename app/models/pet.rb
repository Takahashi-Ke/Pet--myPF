class Pet < ApplicationRecord
  
  belongs_to :owner
  
  attachment :image
  validates :name, presence: true
  
end
