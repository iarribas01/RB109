=begin
Find the length of the longest substring in the given string
that is the same in reverse

for example
  input: "I like racecars that go fast"
  output: 7
  explanation: racecar

input: string
output: length of the longest palindrome

rules:
  * palindrome:
    * length >= 1
    * string that is the same when reversed
  
data structure: string, array

ALGORITHM

* find all the substrings (start with the largest ones)

baabcd -> 6

baabc d -> 5
b aabcd

baab cd -> 4
b aabc d
ba abcd
...
* iterate through all of these substrings (lengths: str.length ---- 2)
* check if the substring is a palindrome, check if reversed substring is equal to itself unreversed
* if it is
    * return the length of this substring
* otherwise
  * keep going through all the rest of the substrings
continue looping until we come across a palindrome

* if the input str is empty, then return 0
* return 1
=end

def longest_palindrome(str)
  return 0 if str.empty?
  (str.length).downto(2) do |substr_length|
    # from 0 to end minus substr length
    0.upto(str.length - substr_length) do |substr_start|
      substr = str[substr_start, substr_length]
      if substr === substr.reverse
        return substr.length
      end
    end
  end
  1
end

p longest_palindrome("") == 0
p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4 

# baabcd, # baabc d # b aabcd ... d
# p longest_palindrome("baablkj12345432133d") == 9

# 12:37 to write algorithm and code