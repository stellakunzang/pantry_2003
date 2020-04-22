require "minitest/autorun"
require "minitest/pride"
require "./lib/cook_book"
require "pry"

class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_it_has_attributes
    cookbook = CookBook.new
    assert_equal [], cookbook.recipes 
  end
end
