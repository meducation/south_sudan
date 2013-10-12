class Tutorial < ActiveRecord::Base

  validates :author_id, presence: true
  validates :syllabus_item_id, presence: true
  validates :title, presence: true
  validates :description, presence: true

end
