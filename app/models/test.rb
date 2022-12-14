class Test < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :author, class_name: 'User'
  has_many :questions, dependent: :destroy
  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :sort_descending, lambda { |category_title|
    joins(:category).where(categories: { title: category_title })
                    .order(title: :desc).pluck(:title)
  }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true }
end
