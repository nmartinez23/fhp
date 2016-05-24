#return the number(which is max_key) that has the longest collatz sequence
#you still need to refactor the two loops into one

def collatz(n)
  sequence = [n]
  length = 1
	while n != 1
		n = n.even? ? n/2 : n*3 + 1
		sequence << n
		length += 1
	end
	length
	# sequence.join('->') + " -- length is #{length}"
end

collect = {}
(1..1000000).each do |num|
	collect[num] = collatz(num)
end
max_value = 0
max_key = 0
collect.each do |key, value|
	if value > max_value
		max_value = value
		max_key = key
	end
end

puts max_key
puts max_value




# def collatz2(n)
# 	sequence = [n]
# 	length = 1
# 	while n != 1
# 		if n % 2 == 0 
# 			n = n/2
# 		else
# 			n = n*3 + 1
# 		end
# 		sequence << n
# 		length += 1
# 	end
# 	sequence.join('->') + " -- length is #{length}"
# end

# puts collatz2(6)






# require 'benchmark'
# num = 7
# Benchmark.bm do |x|
# 	x.report("collatz") { puts collatz(num) }
# 	x.report("collatz2") { puts collatz2(num) }
# end