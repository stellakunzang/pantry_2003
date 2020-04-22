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

end
