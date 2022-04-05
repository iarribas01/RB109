###### 11:50

# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

=begin
  input: array (numbers)
  output: array (numbers)
    * same length as input array
    * each number describing how many numbers is smaller than the current

  data structure: array

  ALGORITHM
  * unique_numbers --- array containing our unique numbers
  Iterate through each of the numbers in the input array using map
    > transform into the *count* of numbers smaller than it (pass in a block into count)
    > return this value back to map method block
  return this transformed array

=end

def smaller_numbers_than_current!(arr)
  unique_numbers = arr.uniq
  # >> mutability
  arr.map! do |num|
    unique_numbers.count do |n|
      n < num
    end
  end
end


def smaller_numbers_than_current(arr)
  unique_numbers = arr.uniq
  arr.dup.map do |num|
    unique_numbers.count do |n|
      n < num
    end
  end
end


p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]


# The tests above should print "true".