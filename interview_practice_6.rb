=begin
  Given 2 strings,
  your job is to find out if there is a substring
  that appears in both strings. You will
  return true if you find a substring that appears
  in both strings, or false if you do not
  we only care about substrings that are longer than
  one letter 

input: two strings
output: boolean
  * true if substr appears in both
  * false if substr doesn't appear in both

rules:
  * substr > 1
  * always false if either string is empty or length 1
  * case insensitive

Examples:
  -> S[ome]thing --- H[ome]


Approaches:
    * first check if the characters are the same at all? 
    * *** find all substrings of the shorter input string
    * starting with lowest lengths, find all the substrings 
    * find all the substrings and see if any are equal


Algorithm
  - check which input string is shorter
  - take the shorter input string find all the substrings of that string
  > iterate through all the different lengths of substrings starting from 2, onto the shorter input string length
    > (nested loop) iterate from beginning of string to end minus the length of the substring
    * So mething * start with length 2, onto length 9
    * S om ething
    * So me thing
    ...
    * Som ething
    * S ome thing
    * So met hing
    ....
    - for each of those substrings, see if the other input string contains the substring
      - String#match / String#gsub!
      - return true if it does
    - continue for all substrings of the shorter string
  - return false
=end

def substring_test(str1, str2)

  shorter_string = str1.length < str2.length ? str1 : str2
  shorter_string.downcase!
  longer_string = shorter_string == str2 ? str1 : str2
  longer_string.downcase!

  2.upto(shorter_string.length) do |substr_length|
    0.upto(shorter_string.length - substr_length) do |substr_start|
      substr = shorter_string[substr_start, substr_length]
      if longer_string.match(substr)
        return true
      end
    end
  end

  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'llt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true


###### 28 min