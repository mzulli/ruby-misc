def reverse_words(str)
	str.split.map{ |word| word.reverse }.join(' ')
end

def reverse_words_mod(str)
	words = str.split.map do |word|
		if word.start_with?('@', '#', 'http')
			word
		else
			word.reverse
		end
	end
	str = words.join(' ')
end

def pig_latin(str)
	words = str.split.map do |word|
		if word.start_with?('@', '#', 'http')
			word
		else
			if word.start_with?('a', 'e', 'i', 'o', 'u')
				word + 'yay'
			else
				vowel_index = word.index(/[aeiou]/)
				consonant = word.slice(0, vowel_index)
				base = word.slice(vowel_index..-1)
				word = base + consonant + 'ay'
			end	
		end
	end
	str = words.join(' ')
end