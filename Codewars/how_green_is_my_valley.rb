=begin
P
  input: array of integers
  output: array, sorted

  left wing: decreasing
  right wing: increasing

  rules: 
    * left and right wing --- same length
    * "wings are around the bottom" --- odd length
    * bottom is part of right wing --- even length
    * each integer of left must be  >= integer on right
    * l - r being as small as possible

E
EVEN LENGTH
a = [79, 35, 54, 19, 35, 25] --> [79, 35, 25, *19*, 35, 54]
The bottom is 19, left wing is [79, 35, 25], right wing is [*19*, 35, 54].
79..................54
    35..........35
        25. 
          ..19

ODD LENGTH
a = [67, 93, 100, -16, 65, 97, 92] --> [100, 93, 67, *-16*, 65, 92, 97]
The bottom is -16, left wing [100, 93, 67] and right wing [65, 92, 97] have same length.
100.........................97
    93..........
               .........92
        67......
               .....65
            -16     


D
Array
two subarrays

A
1. sort array in ascending order
2. remove the last element in array and append to left wing
3. remove the last element in array and prepend to right wing
  * have a boolen to keep track of which wing to add to
4. repeat steps 1-3, alternating between left and right, until input array has no more elements
5. sort the right array
6. append right array to end of left array
7. return resulting array


C
a = [-82, 12, 12,, 38, 46, 55, 66, 68, 72, 100]
left = [100, 68, 55, 38, 12]
right = [-82, 12, 46, 66, 72]

=end

def make_valley(arr)
  arr = arr.sort # sort array in ascending order
  left_wing = []
  right_wing = []
  add_to_left_wing = true

  until arr.length == 0
    if add_to_left_wing
      left_wing.append(arr.pop) # remove the last element in array and append to left wing
    else
      right_wing.prepend(arr.pop) # remove the last element in array and prepend to right wing
    end # repeat steps 1-3, alternating between left and right, until input array has no more elements
    add_to_left_wing = !add_to_left_wing
  end
  left_wing + right_wing# return resulting array
end


p make_valley([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1]) == [17, 15, 8, 7, 4, 1, 4, 5, 7, 14, 17]
p make_valley([20, 7, 6, 2]) == [20, 6, 2, 7]
p make_valley([14, 10, 8]) == [14, 8, 10]
p make_valley([20, 18, 17, 13, 12, 12, 10, 9, 4, 2, 2, 1, 1]) == [20, 17, 12, 10, 4, 2, 1, 1, 2, 9, 12, 13, 18]
p make_valley([20, 16, 14, 10, 1]) == [20, 14, 1, 10, 16]
p make_valley([19, 19, 18, 14, 12, 11, 9, 7, 4]) == [19, 18, 12, 9, 4, 7, 11, 14, 19]
p make_valley([20, 18, 16, 15, 14, 14, 13, 13, 10, 9, 4, 4, 4, 1]) == [20, 16, 14, 13, 10, 4, 4, 1, 4, 9, 13, 14, 15, 18]
p make_valley([20, 20, 16, 14, 12, 12, 11, 10, 3, 2]) == [20, 16, 12, 11, 3, 2, 10, 12, 14, 20]
p make_valley([19, 17, 16, 15, 13, 8, 5, 5, 4, 4, 4]) == [19, 16, 13, 5, 4, 4, 4, 5, 8, 15, 17]
p make_valley([19, 8, 6]) == [19, 6, 8]
