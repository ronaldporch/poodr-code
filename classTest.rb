class Light
	attr_accessor :on
	def initialize
		@on = false
	end

	def on?
		on
	end
end

class Person
	attr_accessor :name
	def initialize name
		@name = name
	end
	def switch_light light
		light.on = !light.on
		puts "#{name} turns the light #{light.on ? 'on' : 'off'}"
	end
end

light = Light.new()
person = Person.new('Ronald')
puts light.on?
person.switch_light(light)
puts light.on?
person.switch_light(light)
puts light.on?