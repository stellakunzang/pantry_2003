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

  end

end
