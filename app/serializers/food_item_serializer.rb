class FoodItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :serving_size, :calories
  belongs_to :meal
end
