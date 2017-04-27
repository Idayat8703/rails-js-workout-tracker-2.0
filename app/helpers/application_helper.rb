module ApplicationHelper
  def to_date(date)
    date.strftime("%B %e, %Y")
  end

  def meal_calories(meal)
    calories = 0
    meal.food_items.each do |food|
      calories = calories + food.calories
    end
    calories
  end
end
