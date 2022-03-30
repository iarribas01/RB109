=begin
Create a function named divisors/Divisors that takes an integer n > 1 
and returns an array with all of the integer's divisors(except for 1 
and the number itself), from smallest to largest. If the number is 
prime return the string '(integer) is prime' (null in C#) (use Either 
String a in Haskell and Result<Vec<u32>, String> in Rust).
=end

def divisors(n)
  if(n>1)
    arr = Array.new
    for i in 2...n
      if n%i==0
        arr << i
      end
    end
    arr.empty? ? "#{n} is prime" : arr
  end
end


p divisors(15) == [3,5]
p divisors(253) == [11,23]
p divisors(24) == [2,3,4,6,8,12]
 