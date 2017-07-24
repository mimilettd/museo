require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  def test_class_exist
    photograph = Photograph.new
    assert_instance_of Photograph, photograph
  end

  def test_photograph_name
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
  end

  def test_photograph_artist_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 4, photograph.id
  end
end
