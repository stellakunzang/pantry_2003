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
end 
