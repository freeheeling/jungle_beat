require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new('plop')
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_data
    assert_equal 'plop', @node.data
  end

  def test_it_starts_without_a_next_node
    assert_nil @node.next_node
  end
end
