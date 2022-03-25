=begin
Given a non empty string, check if it can be 
constructed by taking a substring of it and
appending multiple copies of the substring
together. 
  * is there a pattern that repeats itself
    throughout the entire string
  

Rule:
* You may assume the given string
consists of lowercase English letters only
* substring: length 2-str.length/2
* is this case sensitive? (isn't, but intput is lowercase)

ex 1)
input: "abab"
output: True
explanation: it's the substring "ab" twice

example:
input: "aba"
Output: false

find all the substrings
for each substring, we want to see if this pattern
  continues to the rest of the string
  we can concatenate itself n times until it's the same length
    if we concatenate the substring n times and it's greater than the stringg
      this pattern is false
continue to search for a substring pattern that exists until we reach the largest string
if we do, return false.

=end


# abab
# ab

# "aab aaba"
# aa
# aab
# 

def repeated_substring_pattern(str)
  # take our input string
  # cycle through each substrng (0-1, 0-2, 0-3... 0-length/2)
  2.upto(str.length/2) do |substr_length|
    substring = str[0, substr_length]
    # concatenate the substring to itself until the length of the substring is greater or equal to our input string
    while substring.length < str.length 
      substring << substring
    end

    if (substring.length == str.length && substring == str)
      return true
    end
  end

  false
  # return our boolean
end

# ab

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false # ab
p repeated_substring_pattern("aabaaba") == false  # aa, aab, 
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true


=begin
Notes:
- think of more edge cases:
  strings: case sensitive, empty string, (non)alphanumerics
- be in full control, have an expectation for the output before test running


=end