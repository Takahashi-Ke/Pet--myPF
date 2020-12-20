class Favorite < ApplicationRecord

  belongs_to :pet
  belongs_to :diary
  belongs_to :memory

end
