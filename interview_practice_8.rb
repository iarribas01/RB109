=begin
  You are going to be given an array of integers.
  Your job is to take that array and find an index
  N where the sum of the integers to the left of N 
  is equal to the sum of the integers to the right
  of N. If there is no index that would make this 
  happen, return -1

  for example
  input: [1, 2, 3, 4, 3, 2, 1]
  output: 3 sum to the left 
  explanation: [1, 2, 3] is equal to
  sum on right [3, 2, 1]

  example:
  input: [20, -10, -80, 10, 10, 15, 35]
  output: 0
  explanation: empty arrays are equal to 0
  sum 0 is same as sum 0
 
=end

def find_even_index(arr)
  for i in 0...arr.length
    left = arr[0, i]
    right = arr[i+1..arr.length]
    if left.sum == right.sum
      return i
    end
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3