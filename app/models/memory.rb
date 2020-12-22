class Memory < ApplicationRecord

   belongs_to :pet
   has_many :memory_images, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :favorites, dependent: :destroy

   validates :title, presence: true
   validates :body, presence: true

end
