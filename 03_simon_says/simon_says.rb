def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num = 1)
	if num == 1
		return word + " " + word
	else
		return num.times.collect{ word }.join(' ')
	end
end

def start_of_word(word, num)
	i = 0
	ret = String.new
	num.times do 
		ret += word[i]
		i += 1
	end
	return ret
end

def first_word(word)
	return word.split(' ').first
end

def titleize(word)
	arr = ["a", "an", "and", "the", "but", "over", "of"]
	word = word.gsub(/\w+/){|match| arr.include?(match) ? match : match.capitalize}
	word[0] = word[0].upcase
	return word
end
