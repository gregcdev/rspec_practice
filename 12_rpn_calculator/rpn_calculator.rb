class RPNCalculator

	def initialize
		@numbers = []
		@value = 0
	end

	def push(number)
		@numbers << number
	end

	def plus
		check_error
		@value = 0
		@numbers.pop(2).each {|val| @value += val}
		@numbers << @value
	end

	def minus
		check_error
		temp = @numbers.pop(2)
		@value = temp[0] - temp[1]
		@numbers << value
	end

	def divide
		check_error
		temp = @numbers.pop(2)
		@value = temp[0].to_f / temp[1].to_f
		@numbers << @value
	end

	def times
		check_error
		temp = @numbers.pop(2)
		@value = temp[0].to_f * temp[1].to_f
		@numbers << @value
	end

	def tokens(args)
		args.split(" ").collect {|item| item.to_i == 0 ? item.to_sym : item.to_i}
	end

	def evaluate(number)
		tokens(number).each do |item|
			if item == :+
				plus
			elsif item == :-
				minus
			elsif item == :*
				times
			elsif item == :/
				divide
			else
				push(item)
			end
		end
		@value
	end

	def value
		@value
	end

	def check_error
		if @numbers == []
			raise "calculator is empty"
		end
	end
end