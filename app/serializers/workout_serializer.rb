class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :content, :calories_burned
  belongs_to :user
end
