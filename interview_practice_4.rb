=begin
The maximum sum subarray problem consists in 
finding the maxum sum of a contiguous subsequence
in an array of integers

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
Should be 6: [4, -1, 2, 1]

Easy case is when the array is made up of only positive
numbers and the maximum sum is the sum of the whole array

If the array is made up of only negative numbers
return 0 instead
  
Empty array is considered to have zero greatest
sum, note that empty array is also a valid subarray


input: array
output: integer (sum, greatest sum of a contiguous array)

Notes:
* all positives -> sum of whole Array
* all negatives -> return 0
* empty array -> return 0

Data structure: Array
intermediary: sub array, integer as sum

###


[-2, 1, -3, 4, -1, 2, 1, -5, 4]
[-2, 1, -3, 4, -1, 2, 1, -5, 4]  * save sum and the sub array if the sum is 
                                    greater than the value that's currently stored
Should be 6: [4, -1, 2, 1]



Algorithm

handle our invalid input 
  -> positives, negatives, and empty
iterate through our Array (this is our subarray start points)
  iterate through subarray
    check if this sub array's sum is greater than the current sum that's stored
      save this new sum
      # save this subarray
    otherwise
      continue on and do nothing
return sum

=end

def max_sequence(arr)
  # handle our invalid input 
  if arr.all? {|val| val > 0} # positive
    return arr.sum
  elsif (arr.empty? || arr.all? {|val| val < 0})
    return 0
  end
  #[-2, 1, -3, 4, -1, 2, 1, -5, 4]
  sum = arr[0]
  0.upto(arr.length-1) do |subarr_start| 
  #   iterate through subarray
    subarr_start.upto(arr.length-1) do |subarr_end|
      subarr = arr[subarr_start..subarr_end]
  #     check if this sub array's sum is greater than the current sum that's stored
      if subarr.sum > sum
        sum = subarr.sum
      end
    end
  end
  sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([4, 6, 5]) == 15
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# finished at about 30 minutes
# programming processes is all over the place
# don't forget to outline pedac