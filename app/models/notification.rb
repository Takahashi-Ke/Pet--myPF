class Notification < ApplicationRecord

  belongs_to :diary, optional: true
  belongs_to :diary_comment, optional: true
  belongs_to :visiter, class_name: 'Pet', optional: true
  belongs_to :visited, class_name: 'Pet', optional: true

end
