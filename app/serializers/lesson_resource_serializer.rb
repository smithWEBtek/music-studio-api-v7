class LessonResourceSerializer < ActiveModel::Serializer
  attributes :id, :lesson_id, :resource_id
  belongs_to :lesson
  belongs_to :resource
end
