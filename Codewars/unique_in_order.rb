=begin
input: sequence(string, array...)
output: list of items
  * without any elements of the same value next 
  * to each other, preserving original order
rules:
  * duplicates can occur, but just can't be next to each other
AAAABBBCCDAABBB -> ['A', 'B', 'C', 'D', 'A', 'B']
'ABBCcAD' -> ['A', 'B', 'C', 'c', 'A', 'D']
[1,2,2,3,3] ->  [1,2,3]

two problems
use an index based system, which works with strings and arrays
dealing with a collection no matter the type
the actual problem
  remove all duplicates next to each other
  iterate through each element
  if the next element is the same,
    move onto the next element
  otherwise
    append this element to the return array
  continue until end of elements 
return resulting array

=end

def unique_in_order(iterable)
  new_arr = []
  for i in 0..iterable.length
    new_arr << iterable[i] if iterable[i] != iterable[i+1]
  end
  new_arr
end

p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       == [1,2,3]