# module Luhn
# 	def self.is_valid?(number)

# # Step 1 - break the credit card into it's individual digits.
# 		num = number.to_s.split('').map(&:to_i)

# # Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
# 		num2 = num.reverse
# 		reversed_transformed = []
# 		sum = 0
# 		num2.each_with_index do |digit, position|
# 			if position % 2 == 0
# 				reversed_transformed << digit
# 			else
# 				reversed_transformed << (digit * 2) 
# 			end

# # Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# 			index = reversed_transformed.length - 1
# 			if reversed_transformed[index] > 9
# 				reversed_transformed[index] = reversed_transformed[index] - 9 
# 			end
# 		end

# # Step 4 - Sum the digits.
# 		# puts reversed_transformed.inspect
# 		reversed_transformed.each do |x|
# 			sum = sum + x
# 		end

# # Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
# 		sum % 10 == 0
# 	end
# end

#-----------------------------------REFACTORED----------------------------------------

module Luhn
  def self.is_valid?(number)
    digits = number.to_s.split('').map(&:to_i).reverse

    sum = 0
    digits.each_with_index do |digit, idx|
      if idx % 2 == 0
        sum += digit
      else
        # Add doublt the digit, but subtract 9 if that's greater than 9
        sum += (digit * 2 > 9) ? digit * 2 - 9 : digit * 2
      end
    end

    sum % 10 == 0
  end
end


