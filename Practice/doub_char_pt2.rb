# input: string
# output: new string
  # every consonant character is doubled
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
  # rule: vowels, digits, punctuation, and whitespace ignored

def double_consonants(str)
  # two approaches: iterative and regex

  ##### iterative approach #####
  str.chars.map do |char| # split the string into characters
  # use map method to alter each char

  # if the character is a consonant,
    # have a const array full of consonants
    if CONSONANTS.include?(char.downcase)
      # check to see if char is inside this array
      char + char # append the character to itself
    else # if not consonant
      char # just return itself
    end
  end.join # continue until end of string reached

end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""