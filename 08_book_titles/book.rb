class Book
	def title
		@title
	end
	def title=(phrase)
		conjunctions = "and or but".split
		prepositions = "in on of at to over".split
		articles = "a an the".split
		@title = phrase.split(' ').map {|word| conjunctions.include?(word) || prepositions.include?(word) || articles.include?(word) ? word.downcase : word.capitalize}.join(' ')
		@title[0] = @title[0].capitalize
	end
end