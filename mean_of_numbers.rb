# Calculate the mean of an array of numbers. 
# The mean is the sum of numbers, divided by the number of items.

def mean(arr)
  return 0 if arr.empty?
  sum = 0

  arr.each do |num|
    sum = sum + num
  end
  
  sum / arr.count
end


def mean(arr)
  return 0 if arr.empty?

  arr.inject(0) { |sum, num| sum + num } / arr.count
end

numbers = [1,2,3,4,5]
puts mean(numbers)
