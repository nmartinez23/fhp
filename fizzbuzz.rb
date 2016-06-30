def fizz_buzz(n)
  i = 1
  while i <= n
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz" 
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else puts i
    end
    i += 1
  end
end

fizz_buzz(30)

# i = 0
# while i <= 100
#   i += 1
#   if i % 3 == 0 && i % 5 == 0
#     puts "FizzBuzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   else
#     puts i
#   end
# end

#     JS

# for(var i = 1; i <= 100; i++) {
#   if (i % 15 === 0) {
#     console.log("FizzBuzz");
#   }  else if (i % 3 === 0) {
#     console.log("Fizz");
#   } else if (i % 5 === 0) {
#     console.log("Buzz");
#   } else
#     console.log(i);
# }