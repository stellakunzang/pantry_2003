require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/recipe"
require './lib/ingredient'

class RecipeTest < Minitest::Test

  def test_it_exists
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
  end
  
end
