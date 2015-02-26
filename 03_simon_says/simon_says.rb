def echo (message)
	message
end
def shout (message)
	message.upcase
end
def repeat (message, repeats = 2)
	result = message
	while repeats > 1 do
		result+= " "+message
		repeats-=1
	end
	result
end
def start_of_word (word,letters)
	letters-=1
	word[0..letters]
end
def first_word (phrase)
	phrase.split[0]
end
def titleize (phrase)
	result = phrase.split(' ')
	little_words = ["and", "the", "over"]
	result.each_with_index do |w, i|
		i>0 && little_words.include?(w) ? w : w.capitalize!
	end
=begin
	result.each_with_index do |word, i|
		if i == 0 || word != 'and' && word != 'the' && word != 'over'
			word.capitalize!
		end
	end
=end
	result.join(' ')
end