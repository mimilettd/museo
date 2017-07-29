require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'
require 'pry'

class CuratorTest < Minitest::Test
  def test_it_exists
    curator = Curator.new
    assert_instance_of Curator, curator
  end

  def test_it_starts_with_no_arists
    curator = Curator.new
    expected = []
    assert_equal expected, curator.artists
  end

  def test_it_starts_with_no_museums
    curator = Curator.new
    expected = []
    assert_equal expected, curator.museums
  end

  def test_it_starts_with_no_photographs
    curator = Curator.new
    expected = []
    assert_equal expected, curator.photographs
  end

  def test_it_can_return_count_of_museums
    curator = Curator.new
    curator.add_museum({name: "MoMA"})
    assert_equal 1, curator.museums.count
  end

  def test_it_can_return_id
    curator = Curator.new
    curator.add_museum({name: "MoMA"})
    assert_equal 1, curator.museums.first.id
  end

  def test_it_can_add_artist
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, curator.artists.count
  end

  def test_it_can_return_artist_id
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, curator.artists.first.id
  end

  def test_it_can_add_photograph
    curator = Curator.new
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_instance_of Array, curator.photographs
  end

  def test_it_can_return_photograph_count
    curator = Curator.new
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_equal 1, curator.photographs.count
  end

  def test_it_can_return_photograph_id
    curator = Curator.new
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_equal 1, curator.photographs.first.id
  end

  def test_it_can_find_museum
    curator = Curator.new
    curator.add_museum({name: "Museo de Arte Moderno"})
    museum = curator.find_museum(1)
    assert_equal "Museo de Arte Moderno", museum.name
  end

  def test_it_can_return_museum_id
    curator = Curator.new
    curator.add_museum({name: "Museo de Arte Moderno"})
    museum = curator.find_museum(1)
    assert_equal 1, museum.id
  end

  def test_it_can_find_artist
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    artist = curator.find_artist(1)
    assert_equal "Ansel Adams", artist.name
  end

  def test_it_can_return_artist_id
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    artist = curator.find_artist(1)
    assert_equal 1, artist.id
  end

  def test_it_can_find_museum_by_photograph
    curator = Curator.new
    curator.add_museum({name: "Metropolitan Museum of Art"})
    curator.add_artist({name: "Diane Arbus", born: 1923, died: 1971, country: "United States"})
    curator.add_photograph({name: "Identical Twins, Roselle, New Jersey", artist_id: 1, museum_id: 1, year: 1967})
    photograph = curator.photographs.first
    museum = curator.find_museum_by_photograph(photograph)
    assert_instance_of Museum, museum
    assert_equal 1, museum.id
    assert_equal "Metropolitan Museum of Art", museum.name
  end

  def test_it_can_find_artist_by_photograph
    curator = Curator.new
    curator.add_museum({name: "Metropolitan Museum of Art"})
    curator.add_artist({name: "Diane Arbus", born: 1923, died: 1971, country: "United States"})
    curator.add_photograph({name: "Identical Twins, Roselle, New Jersey", artist_id: 1, museum_id: 1, year: 1967})
    photograph = curator.photographs.first
    artist = curator.find_artist_by_photograph(photograph)
    assert_instance_of Artist, artist
    assert_equal 1, artist.id
    assert_equal "Diane Arbus", artist.name
  end
end
