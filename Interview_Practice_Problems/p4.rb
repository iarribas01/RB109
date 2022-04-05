####### 19: 37

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin 
input: array (numbers)
output: array (numbers)
  * length 2
  * these two integers exist in the input Array
  * the difference between the two is the smallest

questions:
  * handle an array of length < 2? -> nil 


Approach:
result_arr - [5, 25]
current_arr - [5, 25]
[5, 25, 15, 11, 20]

1. [*5*, *25*, 15, 11, 20]
2. [*5*, 25, *15*, 11, 20]
2. [*5*, 25, 15, *11*, 20]
....
1. [5, *25*, *15*, 11, 20]
2. [5, *25*, 15, *11*, 20]
2. [5, *25*, 15, 11, *20*]

iterate through each number through input Array
  * represent: start of current array: idx 0 of current_arr
  iterate through each number through input Array
    * represent the last number of current array: idx 1 of current_arr
    reassign current array to the two respective elements
    substract the second from the first in current array
      check if index of outer loop is NOT the same as inner loop. If so
        is it smaller than the difference of the result_arr
          if so  
            update the result array
      >>> worry about absolute value of difference?
  return the result array
=end

def closest_numbers(arr)
  return nil if arr.length < 2
  result_arr = [arr[0], arr[1]]
  arr.each_with_index do |first, i|
    arr.each_with_index do |second, j|
      if ((first - second).abs < (result_arr[1] - result_arr[0]).abs) && j != i
        result_arr = [first, second]
      end
    end
  end
  result_arr
end


# Examples:

p closest_numbers([5, 25, 15, 11, 20])== [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".