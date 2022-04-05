##### 15:04

# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin 
to_weird_case
input: string
output: String
  * every third word transformed
    * every 2nd character is converted to uppercase

data structure: strings and arrays
  -> arrays of strings
  -> array of characters

map method
index to keep track of:
  - every third word
  - every second character



ALGORITHM:
 . initialize counter for word counter to 0
1. split the string into words
2. iterate through the words using map
  increment word counter by 1
  a. check if this a "third word" --- check if the word counter is divisble by 3
  if so, split this string into characters 
      initialize a character counter
      iterate through the characters using map
       increment character counter by 1
        a. check if the character is a "second character" --- if char counter is divisible by 2
          if so, capitalize it 
          otherwise, keep the character as usual
    if otherwise
      keep this word as usual
3. return the transformed string

=end

# Examples:

def to_weird_case(str)
  word_counter = 0
  str.split.map do |word|
    word_counter += 1
    if word_counter % 3 == 0
      character_counter = 0
      word.chars.map do |char|
        character_counter += 1
        character_counter.even? ? char.upcase : char
      end.join
    else
      word
    end
  end.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') =='Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".