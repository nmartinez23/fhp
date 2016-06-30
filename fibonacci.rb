def recursive_fib(n)
  return n if n <= 1
  n = recursive_fib(n-1) + recursive_fib(n-2)
end

# recursive_fib(35) 
# should be 9227465




def iterative_fib(n)
	elements = [0,1]
	i = 2
	while i <= n
	elements.push(elements[i - 1] + elements[i - 2])
	i += 1
	end
	elements[n]
end

# iterative_fib(35)


require 'benchmark'
num = 35
Benchmark.bm do |x|
	x.report("recursive_fib") { recursive_fib(num) }
	x.report("iterative_fib") { iterative_fib(num) }
end