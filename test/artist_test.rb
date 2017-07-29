require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'

class ArtistTest < Minitest::Test
  def setup
    @artist = Artist.new({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
  end
  def test_it_exists
    artist = Artist.new({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_instance_of Artist, artist
  end

  def test_it_can_take_a_name
    assert_equal "Ansel Adams", @artist.name
  end

  def test_it_can_take_a_birth_year
    assert_equal 1902, @artist.born
  end

  def test_it_can_take_a_death_year
    assert_equal 1984, @artist.died
  end

  def test_it_has_can_take_a_country
    assert_equal "United States", @artist.country
  end
end
