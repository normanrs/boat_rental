require 'minitest/autorun'
require 'minitest/pride'
require './lib/rental.rb'

class RentalTest <  Minitest::Test
  def test_it_exists
    rental = Rental.new
    assert_instance_of Rental, rental
  end

end
