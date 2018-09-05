require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat.rb'

class BoatTest <  Minitest::Test
  def test_it_exists
    kayak = Boat.new(:kayak, 20)
    assert_instance_of Boat, kayak
  end

  def test_it_has_type
    kayak = Boat.new(:kayak, 20)
    actual = kayak.type
    expected = :kayak
    assert_equal expected, actual
  end

  def test_it_has_price_per_our
    kayak = Boat.new(:kayak, 20)
    actual = kayak.price_per_hour
    expected = 20
    assert_equal expected, actual
  end

  def test_it_can_add_a_rented_hours
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour
    actual = kayak.hours_rented
    expected = 3
    assert_equal expected, actual
  end

end
