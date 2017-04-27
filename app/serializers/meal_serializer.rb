class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type
  has_many :food_items
end
