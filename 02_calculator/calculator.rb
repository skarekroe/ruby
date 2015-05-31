def add(*numbers)
	numbers.inject{|a, i| a + i}
end
def subtract(*numbers)
	numbers.inject{|a, i| a - i}
end
def sum(array)
	result = 0
	for i in array
		result += i
	end
	return result
end
def multiply(*numbers)
	numbers.inject(1){|a, i| a*i}
end
def power(x, y)
	result = 1
	y.times do
		result *= x
	end
	return result
end
def factorial(n)
	if n == 0
		return 0
	end
	result = 1
	while n > 0
		result *= n
		n -= 1
	end
	return result
end