#input string 'rr rr'
#return number representing meal cost
def sushi_cost(meal)
  cost          = 0
  sushi_tracker = 0
  meal.split('').each do |meal_content|
    sushi_tracker += 1 unless meal_content == " "
    if meal_content == "r" && sushi_tracker % 5 != 0
      cost += 2
    elsif meal_content == " "
      cost += 0
    end
  end
  p cost
end
  sushi_cost('rr     rrr')
