def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(sum_array)
	total = 0
	if sum_array.nil?
		sum_array = [0]
	end
	sum_array.each do |n|
		total += n
	end
	return total
end