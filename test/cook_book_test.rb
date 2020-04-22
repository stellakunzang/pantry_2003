require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/recipe"
require './lib/ingredient'
require './lib/cook_book'

class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of cookbook, Cookbook
  end

end
