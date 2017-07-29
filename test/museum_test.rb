require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'

class MuseumTest < Minitest::Test
  def test_it_exists
    museum = Museum.new({name: "MoMA"})
    assert_instance_of Museum, museum
  end

  def test_it_can_take_a_name
    museum = Museum.new({name: "MoMA"})
    expected = "MoMA"
    assert_equal expected, museum.name
  end

end
