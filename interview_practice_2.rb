=begin

  Given an array of strings made only from lowercase letters, return an array of 
  all characters that show up in all strings within the given array (including duplicates).
  For example, if a character occurs 3 times in all strings, but not 4 times, you need
  to include that character three times in the final answer

  input: array of strings (only lowercase letters)
  ouput: array of all characters (the ones that show up in all strings, including duplicates)

  data structure: array


  hard part -> including the duplicates in an array
  bella, label, roller -> e l l
  Notes: 
    * e appears in all words once
    * l appears in all words twice

  -> two problems: find the common letters, see how many times they occur in each word

  Algorithm
  take the array
  join all the words and take the uniq values
  iterate through the array
  select the values that appear in all words


=end

# algorithm
# find all the common chars that occur in the words
# iterate through each of the common chars
# find the num occurrences of the char
  # find the smallest num occurrence of the char and set that value to num occurrences
# append the char by num occurrences
# return the stringn as an array

def common_chars(words)
  # checks to see if 
  common_chars = words.join.chars.uniq.select do |letter|
    words.all? {|word| word.include?(letter)}
  end

  common_chars.each_with_object("") do |char, result_arr|
    num_occurrences = words.map{|w| w.count(char)}.min
    result_arr << char*num_occurrences
  end.chars
end

p common_chars(["bella", "label", "roller"])# == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"])# == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"])# == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"])# == []