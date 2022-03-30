
=begin
Write a function named first_non_repeating_letter that takes a string input, 
and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', 
since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, 
but the function should return the correct case for the initial letter. For example, 
  the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return an empty string ("") 
or None -- see sample tests.
=end

# input: string
# output: string, first char not repeated anywhere in string
# rules: upper and lowercase considered same character, but return correct case
# return empty string if all repeating characters

# ex). stress -> 't'

# ALGORITHM

# create an empty string that represents resulting character
# split input string into characters
# iterate through each character
# if the current character is repeated
  # if the count of the current character within string is greater than 1
  # do nothing
# if the current character is not repeated
  # break out of loop
  # set the resulting string equal to the current character
# return the resulting character

def first_non_repeating_letter(str)
  result = ""
  str.each_char do |char|
    if str.count(char) == 1
      result = char
      break
    end
  end
  result
end

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stress') == 't'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
