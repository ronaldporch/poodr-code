class Gear
	attr_accessor :chainring, :cog, :wheel
	def initialize(chainring, cog, wheel = nil)
		@chainring = chainring
		@cog = cog
		@wheel = wheel
	end

	def ratio
		chainring / cog.to_f
	end

	def gear_inches
		ratio * wheel.diameter
	end
end

class Wheel
	attr_accessor :rim, :tire
	def initialize(rim, tire)
		@rim = rim
		@tire = tire
	end

	def diameter
		rim + (tire * 2)
	end
	def circumference
		Math::PI * diameter
	end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference
puts Gear.new(52, 11, @wheel).gear_inches
puts Gear.new(52, 11).ratio