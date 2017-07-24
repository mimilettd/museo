require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test
  def test_class_exist
    curator = Curator.new
    assert_instance_of Curator, curator
  end
end
