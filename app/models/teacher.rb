class Teacher < ApplicationRecord
  has_many :students
  has_many :lessons
  has_many :lesson_resources, through: :lessons
  has_many :resources, through: :lessons
end
