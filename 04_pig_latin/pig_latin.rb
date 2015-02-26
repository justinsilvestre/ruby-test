def translate (english)
	pig_latin = english.split(' ').map! do |word|
		suffix = ""
		first_vowel = word =~ /[aeiou]/
		if first_vowel > 0
			first_vowel += word[first_vowel-1..first_vowel]=='qu' ? 1 : 0
			suffix += word[0...first_vowel]
			word = word[first_vowel..-1]
		end
		suffix += 'ay'
		word += suffix
		
	end
	pig_latin.join(' ')
end

puts translate "apple jacks"