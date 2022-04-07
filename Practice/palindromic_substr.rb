###### 15:39

=begin

input: string
output: array (strings)
  * contains all the palindromes of the input string
  * duplicates should be included twice

Rules:
  * case sensitive
  * palindromes are AT LEAST length 2
  * if there are no palindromes in the string, return empty array
  * palindromes are nested

- involve finding all substrings
'madam' == ['madam', 'ada']
madam

ma dam
m ad am
ma da m
mad am
...
madam

ALGORITHM:

initialize an empty result array
-iterate through all substrings with 
- iterate changing the length of the substring -- 2 to input.length
  - iterate changing the start of the substring -- 0 to input.length - length of the substring
    check if each substring is a palindrome, if it is add to result array
    - reverse the string and check if it's the same reversed
    if it is
      add to result array
    otherwise
      continue

return result array

=end

def palindromes(str)
  palindromes = []
  2.upto(str.length) do |substr_length|
    0.upto(str.length - substr_length) do |substr_start|
      substr = str[substr_start, substr_length]
      palindromes << substr if substr.reverse == substr
    end
  end
  palindromes
end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye').length== ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
].length
p palindromes('knitting cassettes').length == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'].length