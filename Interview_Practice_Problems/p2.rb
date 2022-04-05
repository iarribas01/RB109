####### 15:45

# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin 

input: array integers 
output: integer or nil 
  * minimum sum of 5 consecutive numbers in array 
  * nil if length of array is shorter than 5

Question:
  - how do I deal with an empty array? -- nil

data structure: array
  intermediary: variable to store current sum
                subarray

======================
Algorithm:
  check if length is less than 5
    return nil if it is
  otherwise

  set the sum as the sum of the first five integers 

  iterate through all subarrays of length 5
    [55, 2, 6, 5, 1]            [2, 9, 3, 5, 100]
    55         [2, 6, 5, 1  2 ]           9, 3, 5, 100
    55, 2 [ 6, 5, 1  2, 9 ]       , 3, 5, 100
    55, 2, 6 [5, 1  2, 9, 3 ] 5, 100
    ...
    start index -> goes from 0 to length - 5
    slice method (start index, length = 5)

  find the smallest sum of the subarrays
  
  take the sum of the subarray
    if the sum is smaller than what the sum currently is
      change the sum to the new sum

  return the sum
=end

def minimum_sum(arr)
  return nil if arr.length < 5
  sum = arr[0, 5].sum

  0.upto(arr.length-5) do |start_index|
    # subarr = arr[start_index, 5]
    # if subarr.sum < sum
    #   sum = subarr.sum
    # end
    current_sum = arr[start_index, 5].sum
    sum = current_sum if current_sum < sum 
  end
  sum
end


# Examples:

p minimum_sum([]) == nil
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".


