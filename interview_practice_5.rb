=begin
  Write a method to find the longest
  common prefix string amongst an array of strings
  
  if there is no common prefix, return an empty string

  ####
  input: array of strings
  output: string (common prefix)
  rules:
    * no prefix -> empty string
    * only lowercase letters
    * assume: no elements -> empty string
    * array of the same string -> that string
  ###
  
  example 1:
  input: ['flower', 'flow', 'flight']
  output: 'fl'

  example 2:
  input: ['dog', 'racecar', 'car']
  output: ''
  explanation: there is no common prefix among the input strings


  all given inputs are in lowercase letters a-z

  data structure: array
  intermediary: string

  ALGORITHM
  variable called prefix 
  take the first string of the Array
  take the characters of that string
  iterate through these characters
    append each char to prefix
    iterate through the rest of the words in the array from index 1 to the end (-1)
      check if the first characters are the same as prefix
      from index 0 (of the word we're itering over) to prefix.length (use slice method)
      if it doesn't
        return our prefix with the last character chopped off
      if it does, continue looping
  return a common prefix

=end

def common_prefix(arr)
  prefix = ''
  return prefix if arr.empty?
  arr.first.each_char do |char|
    prefix << char
    return prefix.chop unless arr.all? {|word| word.start_with?(prefix)}
    # arr[1..-1].each do |word|
    #   unless prefix == word[0, prefix.length]
    #     return prefix.chop
    #   end
    # end
  end
  prefix
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspection', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix([]) == ''
p common_prefix(['throne', 'throne']) == 'throne'

#=> 19:56
# Notes
# * :( forgot how to take last character of String
# use String#chop to take last char