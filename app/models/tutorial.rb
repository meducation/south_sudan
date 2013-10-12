class Tutorial < ActiveRecord::Base

  belongs_to :author, class_name: "User"
  belongs_to :syllabus_item
  has_many :slides

  validates :author_id, presence: true
  validates :syllabus_item_id, presence: true
  validates :title, presence: true
  validates :description, presence: true

end
