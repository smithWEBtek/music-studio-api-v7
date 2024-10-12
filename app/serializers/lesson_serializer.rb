class LessonSerializer < ActiveModel::Serializer
  attributes :id, :date, :notes, :teacher_id, :student_id, :student, :teacher
  belongs_to :teacher
  belongs_to :student
  has_many :lesson_resources
  has_many :resources, through: :lesson_resources
end
