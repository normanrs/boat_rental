class Rental
	attr_accessor :boat, :renter, :returned

	def initialize(boat, renter)
		@boat = boat
		@renter = renter
		@returned = false
	end

	def swap_returned
		@returned ^= true
	end

end
