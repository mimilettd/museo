require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  def test_class_exist
    photograph = Photograph.new
    assert_instance_of Photograph, photograph
  end

  def test_photograph_has_name
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
  end

  def test_photograph_has_artist_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 4, photograph.artist_id
  end

  def test_photograph_has_museum_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 2, photograph.museum_id
  end

  def test_photograph_has_a_year
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 1954, photograph.year
  end

  def test_photograph_has_an_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 1, photograph.id
  end

end
