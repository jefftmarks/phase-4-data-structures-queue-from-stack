require_relative './stack'

class MyQueue

	def initialize
		@s1 = Stack.new
		@s2 = Stack.new
	end

	def add(value)
		@s1.push(value)
	end

	def remove
		until @s1.empty? do
			value = @s1.pop
			@s2.push(value)
		end
		@s2.pop
	end

	def peek
		until @s1.empty? do
			value = @s1.pop
			@s2.push(value)
		end
		@s2.peek
	end

end
