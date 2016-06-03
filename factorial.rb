#recursive

def factorial(num)
  return 1 if num < 2
  num * factorial(num - 1)
end

factorial(5)

#refactored recursive
def factorial(num)
  num < 2 ? (return 1) : num * factorial(num - 1)
end


def factorial(num)
  i = num - 1
  while i > 1
  num *= i
  i -= 1
  end
  num
end