class Memory < ApplicationRecord

   belongs_to :pet
   has_many :memory_images, dependent: :destroy

end
