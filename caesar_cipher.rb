def Caesar(str, num)
	cipher = str.split('')
	idx = 0

	while idx < cipher.length
		
		num.times do 
			if cipher[idx] == "Z"   #equals
				cipher[idx] = "A"			#assign
			elsif cipher[idx] == "z"
				cipher[idx] = "a"
			elsif cipher[idx] =~ /[a-yA-Y]/
				cipher[idx] = cipher[idx].next
			end
		end

		idx += 1
	end

	cipher.join
end


