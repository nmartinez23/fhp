def reverse(str)
	new_string = str.split('').reverse.join('') 
  return new_string       
end


def reverse(str)
  temp = []
  reversed = []
  i = str.length
  temp << str.chars
  
  temp.each do |item| 
    until i < 0
      reversed << item[i] 
      i -= 1
    end
  end
  reversed.join('')
end


def reverse(string)
  temp_array = []
  reverse_array = []
  i = string.length
  temp_array.push(string.chars)
  
  temp_array.each do |item|
    until i < 0
      reverse_array.push(item[i])
      i -= 1
    end
  end
  reverse_array.join('')
end

puts reverse("hello")


def reverse(str) # Method reverse_string with parameter 'string'.
  loop = str.length # int loop is equal to the string's length.
  word = '' # This is what we will use to output the reversed word.
  while loop > 0 # while loop is greater than 0, subtract loop by 1 and add the string's index of loop to 'word'.
    loop -= 1 # Subtract 1 from loop.
    word += str[loop] # Add the index with the int loop to word.
  end # End while loop.
  return word # Return the reversed word.
end # End the method.

def reverse(str)
  new_string = ""
  i = str.length - 1
  while i >= 0
    new_string += str[i]
    i -= 1
  end
  return new_string
end

