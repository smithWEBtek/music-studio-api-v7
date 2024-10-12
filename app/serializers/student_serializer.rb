class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :level, :teacher_id, :active, :likes
  belongs_to :teacher
  has_many :lessons
  has_many :resources, through: :lessons
end
