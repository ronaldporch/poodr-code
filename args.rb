class Car
	attr_accessor :make, :model
	def initialize args
		@make = args[:make]
		@model = args[:model]
	end

	def to_s
		"#{make} #{model}"
	end
end

car = Car.new(make: "Toyota", model: "Camry")
puts car.to_s
defaults = {thing: 1, stuff: 2}
stuff = {thing: 3}
stuff = defaults.merge(stuff)
puts stuff