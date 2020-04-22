class Pantry
    attr_reader :stock

    def initialize
      @stock = Hash.new { |hash, key| hash[key] = 0 }
    end

    def stock_check(item)
      @stock[item]
    end

    def restock(item, count)
      @stock[item] += count
    end

    def enough_ingredients_for?(recipe)
      stock_needed = recipe.ingredients_required
      stock_needed.all? do |item, amount|
        stock_check(item) >= amount == true 
      end
    end

end
