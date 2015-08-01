def measure(number = 1)
	start = Time.now
	number.times{yield}
	finish = Time.now
	(finish - start)/number
end