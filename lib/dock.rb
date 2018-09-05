require './lib/rental.rb'
require './lib/boat.rb'

class Dock
	attr_reader :name,
							:max_rental_time,
							:rentals

	def initialize(name, max_rental_time)
		@name = name
		@max_rental_time = max_rental_time
		@rentals = []
	end

	def rent(boat, renter)
		@rentals << Rental.new(boat, renter)
	end

	def log_hour
		rentals.map do |rental|
			rental.boat.add_hour
		end
	end

	def return(boat)
		rentals.map do |rental|
			rental.swap_returned
		end
	end

end
