def reverse_words_mod(str)
	word_array = str.split
	word_array = word_array.map do |word|
		if word[0] != '@' || word[0] != '#'
			word.reverse 
		end
	end
	str = word_array.join(' ')
	return str
end