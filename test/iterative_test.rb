require 'minitest'
require 'minitest/autorun'
require './lib/iterative'

class LinkedListTest < Minitest::Test
attr_reader :list
  def setup
    @list = LinkedList.new
  end
  def test_it_exists
    assert LinkedList.new
  end

  def test_it_has_a_head_node
    assert_equal nil, list.head_node.data
  end

  def test_it_can_determine_if_list_is_empty
    assert list.empty?
  end

  def test_it_can_add_elements
    list.push('hello')

    refute list.empty?
  end

  def test_it_can_add_multiple_elements
    list.push('hello')
    list.push('world')

    refute list.empty?
    assert_equal 'hello', list.head_node.pointer.data
    assert_equal 'world', list.head_node.pointer.pointer.data
  end

  def test_it_can_remove_items_from_list
    skip
    list.push('hello')
    list.pop('hello')

    assert list.empty?
  end

  def test_it_knows_what_the_first_node_is
    list.push('hello')
    list.push('world')
    list.push('one')
    list.push('two')

    refute list.empty?
    assert_equal 'hello', list.first
  end

  def test_it_knows_what_the_last_node_is
    list.push('hello')
    list.push('world')
    list.push('one')
    list.push('two')

    refute list.empty?
    assert_equal 'two', list.last
  end

  def test_it_knows_how_many_elements_it_holds
    list.push('hello')
    list.push('world')
    list.push('one')
    list.push('two')

    refute list.empty?
    assert_equal 5, list.count    
  end
end