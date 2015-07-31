def add(a,b)
	a + b
end

def subtract(a, b)
	a - b	
end

def sum(a)
	count = 0
	a.each do |item|
		count += item
	end
	return count
end