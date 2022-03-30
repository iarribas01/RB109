# numerical palindrome
# numbers can be rearranged so that it creates a numerical palindrom
# pattern:
  # 3357665
  # every number, there is an even number of instances except one
# rules:
  # false for single digits
  # strings "not valid"
  # negative "not valid"

# algorithm
# 1. handle invalid input
# 2. count number of instances of each digit
#   if odd and > 1, return false
#   if odd, change flag to odd

def palindrome(num)
  if (num.class == String || num < 0)
    return 'Not valid'
  elsif num.to_s.length == 1
    return false
  end
  
  num_str = num.to_s
  middle_taken = false
  num.to_s.chars.uniq.each do |digit|
    if num_str.count(digit).odd? 
      if middle_taken
        return false
      else
        middle_taken = true
      end
    end
  end
  true
end

p palindrome(5) == false
p palindrome(1212) == true
p palindrome(1331) == true
p palindrome(194) == false
p palindrome(3357665) == true
p palindrome("357665") == 'Not valid'