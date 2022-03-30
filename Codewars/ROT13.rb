=begin
ROT13 is a simple letter substitution cipher that replaces a 
letter with the letter 13 letters after it in the alphabet. 
ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string 
ciphered with Rot13. If there are numbers or special characters 
included in the string, they should be returned as they are. Only
letters from the latin/english alphabet should be shifted, like 
in the original Rot13 "implementation".
=end

# p
  # ROT13 -> letter is swapped with letter 13 letters AFTER
  # rules:
    # special characters/numbers are ignored 
    # ONLY letters are swapped
    # capital letters are swapped with capitals, same with lowercase
# e
  # "test" -> "grfg" 

# d
  # array containing letters [a-z]


def rot13(string)
  dictionary = ('m'..'z').to_a + ('a'..'l').to_a
  string.chars.map do |char|
    index = dictionary.index(char.downcase)
  
    index = (index + 13) % 26 unless index == nil

    case char
    when 'a'..'z' then dictionary[index]
    when 'A'..'Z' then dictionary[index].upcase
    else               char
    end
  end.join
end

p rot13("test") == "grfg" 
p rot13("Test") == "Grfg"  
