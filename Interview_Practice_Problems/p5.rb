####### 16:40

# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.


=begin

input: String
output: String
  * single character
  * first char that appears least often in the string

rules:
  * if two appear least often, we want the first character
  * uppercase and lowercase is the same
  * spaces count as character

question: 
  * upper/lowercase -> which one do we return? lowercase
  * how are special characters treated? treated the same as letters


data structure: array (downcased) - of characters
resulting_letter =  'h'
Hello World

ALGORITHM
  initialize resulting letter, probably to first letter in String
  downcase string and split into characters to iterate over
* check if current letter's occurrence is 1, if so,
    return that letter
* otherwise
    * check if resulting letter's occurrences is less than the current letter's occurrences. If so,
        * update the resulting letter to the current letter and continue looping
  return resulting letter
=end

def least_common_char(str)
  return "" if str.empty?
  resulting_letter = str[0]
  str.downcase.each_char do |char|
    num_occurrences = str.downcase.count(char)
    if num_occurrences == 1
      return char
    elsif num_occurrences < str.downcase.count(resulting_letter)
      resulting_letter = char
    end
  end
  resulting_letter
end


# Examples:
p least_common_char("") == ""
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".