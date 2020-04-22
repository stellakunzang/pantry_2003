require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/pantry"
require './lib/ingredient'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_has_stock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new("Macaroni", "oz", 200)
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end

  def test_it_can_check_ingredient_stock
  end

  def test_it_can_restock
  end 

end
