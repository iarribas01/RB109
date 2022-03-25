# input: Given an array of n positive integers a
#nd a positive integer s, 

# find the minimal
# length of a contiguous subarray of which 
# the sum ≥ s. If there isn't one, return 0 instead.
# def minSubLength(arr, s)
#   # take our input array
#   1.upto(arr.length) do |subarr_length| # starting with length 1, look for a subarr
#     for i in 0..arr.length-subarr_length # make a sub array from 0, up to length-subarr_length
#       if arr[i, subarr_length].sum >= s
#         return subarr_length
#       end
#     end
#   end
#   0
# end

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0



################

# You are given an array which contains only integers
# (positive and negative). Your job is to sum only the 
# numbers that are the same and consecutive. The result should be one array.
# You can asume there is never an empty array and there will always be an integer.
def sum_consecutives(arr)

  sum_consecutives = []
  sum, last_num = nil # store a current sum and current number
# sum only numbers that are same and consecutive
  arr.each do |num| # iterate through each number in input array
    if num != last_num # if the current number is different from the last number
      sum_consecutives << sum unless sum == nil # add sum to output array
      last_num = num # update current number
      sum = num # reset sum to current number
    else # otherwise
      sum += num # add current number to sum
    end
  end

  sum_consecutives << sum
end



p sum_consecutives([1,4,4,4,0,4,3,3,1, 1]) 
p sum_consecutives([1,1,7,7,3])
p sum_consecutives([-5,-5,7,7,12,0])

p sum_consecutives([1,4,4,4,0,4,3,3,1, 1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

