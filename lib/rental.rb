class Rental
	attr_reader :boat, :renter

	def initialize(boat, renter)
		@boat = boat
		@renter = renter
		@returned = false
	end

end
