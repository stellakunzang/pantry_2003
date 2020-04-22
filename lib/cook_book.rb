require "Date"

class CookBook

  attr_reader :recipes,
              :date

  def initialize
    @recipes = []
    @date = Date.today.strftime("%m-%d-%Y").to_s
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
      recipe.ingredients.map do |ingredient|
        ingredient.name
      end
    end.flatten.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end

  def summary
    summary = []
    indiv_recipe = Hash.new { |hash, key| hash[key] = {:name => nil, :details => {ingredients: [], total_calories: 0 } } }

    @recipes.each do |recipe|
      indiv_recipe[:name] = recipe.name
      indiv_recipe[:details][:ingredients] << recipe.ingredients_required
      indiv_recipe[:details][:total_calories] = recipe.total_calories
      summary << indiv_recipe
      indiv_recipe = {}
    end
    summary
  end

end
