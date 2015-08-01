def reverser
	yield.split.each do |word|
		word.reverse!
	end.join " "
end

def adder(number = 1)
	yield + number
end

def repeater(number = 1)
	number.times {yield}
end