class Book
	def title=(title)
		@@title = title
	end
	def title
		@@title.split.each_with_index do |word, index|
			if (index == 0)
				word.capitalize!
			elsif (word != "and" && word != "in" && word != "the" && word != "of" && word != "a" && word != "an")
				word.capitalize!
			end
		end.join " "
	end
end