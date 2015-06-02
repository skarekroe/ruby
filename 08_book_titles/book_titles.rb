class Book

	attr_accessor :title
	Articles = ["The", "An", "A"]
	Conjunctions = ["And", "Or"]
	Prepositions = ["In", "Of", "Out"]
	def initialize
		@title = "N/A"
	end

	def title
		a = @title.split(' ').map{|word| word.capitalize}
		a = a.map{|word| 
			if Articles.include? word
				word = word.downcase
			elsif Conjunctions.include? word
				word = word.downcase
			elsif Prepositions.include? word
				word = word.downcase
			else
				word = word
			end}

		a[0] = a[0].capitalize
		@title = a.join(' ')
	end
	

end