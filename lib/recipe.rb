class Recipe

  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new { |hash, key| hash[key] = 0 }
  end

  def add_ingredient(item, count)
    @ingredients_required[item] += count
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum do |item, count|
      item.calories * count
    end 
  end

end
