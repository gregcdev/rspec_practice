def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	([word]*times).join " "
end

def start_of_word(word, position)
	word[0..position - 1]
end

def first_word(words)
	words.split[0]
end

def titleize(words)
	words.split.each_with_index do |word, index|
		if (index == 0 && words.split.length > 1)
			word.capitalize!
		elsif (word == "and" || word == "or" || word == "a" || word == "an" || word == "over" || word == "the")
		else
			word.capitalize!
		end
	end.join " "
end