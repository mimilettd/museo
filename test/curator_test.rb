require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test
  def test_class_exist
    curator = Curator.new
    assert_instance_of Curator, curator
  end

  def test_artists_starts_as_empty_array
    curator = Curator.new
    assert_equal [], curator.artists
  end

  def test_museums_starts_as_empty_array
    curator = Curator.new
    assert_equal [], curator.museums
  end

  def test_it_can_create_an_instance_of_museum_class
    curator = Curator.new
    museum = curator.add_museum({name: "MoMA"})
    assert_instance_of Museum, museum
  end


end
