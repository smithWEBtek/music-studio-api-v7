class Resource < ApplicationRecord
  has_many :lesson_resources, dependent: :destroy
  has_many :lessons, through: :lesson_resources, dependent: :destroy
  has_many :students, through: :lessons
  has_many :teachers, through: :lessons
end
