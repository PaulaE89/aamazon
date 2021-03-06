class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true

  # scope :only_published, -> { where(pubished: true) }
  # scope :popular, -> { where("views > ?", 10) }

  # :phone
  # validates :phone, numericality: { only_integer: true }

  # :points
  # validates :points, numericality: { greater_than: 5 }
  # validates :points, numericality: { greater_than_or_equal_to: 5 }
  # validates :points, numericality: { equal_to: 5 }
  # validates :points, numericality: { less_than: 5 }

  # def published
  #   self.published == true
  # end
end
