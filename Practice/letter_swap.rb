# input: string of words separated by spaces
# output: string
  # first and last letter of every word are swapped

# rules: every word contains at least one letter
  # string will always contain at least one word
  # string contains only words and spaces


# split the sentence into words
# use the slice method to take the middle part of the word
# return the word with the first and last letter swapped


def swap(sentence)
  sentence.split.map do |word|
    swap_first_and_last(word)
  end.join(' ')
end

def swap_first_and_last(word)
  word[0], word[-1] = word[-1], word[0]
  word
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

