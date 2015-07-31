def translate(words)
	new_words = []
	words.split.each_with_index do |word, index|
		new_words << pig_latin(word)
	end
	new_words.join " "
end

def is_vowel?(letter)
	if (letter == "a" || letter == "e" || letter == "i" || letter == "u" || letter == "o")
		return true
	else
		return false
	end
end

def pig_latin(word)
	if (word[0..1] == "qu")
		return word[2..word.length-1] + word[0..1] + "ay"
	end
	if (word[0..2].include? "qu")
		return word[3..word.length-1] + word[0..2] + "ay"
	end
	if (is_vowel?(word[0]))
		word + "ay"
	elsif (is_vowel?(word[1]))
		word[1..word.length-1] + word[0] + "ay"
	elsif (!is_vowel?(word[2]))
		word[3..word.length-1] + word[0..2] + "ay"
	else
		word[2..word.length-1] + word[0..1] + "ay"
	end
end