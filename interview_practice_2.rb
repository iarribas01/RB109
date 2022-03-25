=begin


  Given an array of strings made only from lowercase letters, return an array of 
  all characters that show up in all strings within the given array (including duplicates).
  For example, if a character occurs 3 times in all strings, but not 4 times, you need
  to include that character three times in the final answer

  input: array
    strings
    lower letters
  
  output: array
    characters that show up in all strings

  rules:
    duplicates are included -> if 3 n's appear in each word, 3 n's will appear in the final array

  edge cases:
    what do we return if there are no common characters? return empty array
    how do we handle a single element/empty array? -> assume that the input is neither of those
=end

# def common_chars(words)
#   letters = []
#     words.each do |word|
#       letters << word.chars.uniq
#     end

#   letters = letters.flatten.uniq

#   letters.select! do |letter| # cycle through each letter
#     is_common_char = true
#     num_occurrences = 1
#     words.each do |word| #  cycle through each word
    
#     # delete the letter if the count is less than one for any of the words
#       if word.count(letter) < 1
#         is_common_char = false
#         break
#       else
#         num_occurrences = word.count(letter) if word.count(letter) < num_occurrences
#       end
#     end
#     is_common_char
#   end

# end


def common_chars(words)
  common_chars = []
  words.each do |word|
    letters = word.chars.uniq
    letters.select do |letter|
      words.all? {|wrd| wrd.count(letter) > 1}
    end
    common_chars << letters
  end
  common_chars
end


# b e l a o r
p common_chars(["bella", "label", "roller"])# == ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []