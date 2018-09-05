require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter.rb'

class RenterTest <  Minitest::Test
  def test_it_exists
    renter = Renter.new("Patrick Star", "4242424242424242")
    assert_instance_of Renter, renter
  end

  def test_renter_has_a_name
    renter = Renter.new("Patrick Star", "4242424242424242")
    actual = renter.name
    expected = "Patrick Star"
    assert_equal expected, actual
  end

  def test_renter_has_a_credit_card_number
    renter = Renter.new("Patrick Star", "4242424242424242")
    actual = renter.credit_card_number
    expected = "4242424242424242"
    assert_equal expected, actual
  end


end
