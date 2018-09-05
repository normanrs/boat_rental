require 'minitest/autorun'
require 'minitest/pride'
require './lib/dock.rb'

class DockTest <  Minitest::Test
  def test_it_exists
    dock = Dock.new("The Rowing Dock", 3)
    assert_instance_of Dock, dock
  end

  def test_it_has_a_name
    dock = Dock.new("The Rowing Dock", 3)
    actual = dock.name
    expected = "The Rowing Dock"
    assert_equal expected, actual
  end

  def test_it_has_a_max_rental_time
    dock = Dock.new("The Rowing Dock", 3)
    actual = dock.max_rental_time
    expected = 3
    assert_equal expected, actual
  end

end
