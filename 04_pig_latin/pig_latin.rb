def translate(content)
	vowel = ["a", "e", "i", "o", "u"]
	c = content.downcase.split(' ')
	prefix = String.new
	result = String.new
	overall = String.new
	c.each do |word|
		prefix = getPrefix(word)
		if vowel.include? prefix[0]
			result = word + "ay"
		else
			temp = word.split('') << prefix
			temp.shift(prefix.length)
			result = temp.join('') + "ay"
		end
		overall += result + " "
	end
	overall = overall[0...-1]
	return overall
end

def getPrefix(theWord)
	theWord.downcase
	temp = "~~~~"
	theWord = theWord.gsub("qu", temp)
	word = theWord.split('')
	vowel = ["a", "e", "i", "o", "u"]
	vPre = ""
	cPre = ""

	if vowel.include? word[0]
		word.each do |letter|
			if vowel.include? letter
				vPre += letter
			else
				break
			end
		end
		vPre = vPre.gsub(temp, "qu")

		return vPre
	else
		word.each do |letter|
			if !vowel.include? letter
				cPre += letter
			else
				break
			end
		end
		cPre = cPre.gsub(temp, "qu")
		return cPre
	end
end