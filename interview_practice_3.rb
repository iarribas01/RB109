=begin
 You have to create a method that takes a positive
 integer number and returns the next bigger
 number formed by the same digits
 
 12 -> 21
 513 -> 531
 111 -> -1

input: positive Integer
output: integer
  * next biggest number using the same digits
  * if there is no next biggest number, return -1

 12 -> 21 * switch the two numbers
 513 -> 531 * keep the hundreds place in place, and switch the tens and ones
 2017 -> 2071 * keep the thousands and hundreds, switch the tens and ones
 111 -> -1 

2071 -> 2107
  1. 2071
  2. try 2 017  -> no go
  3. try 2 710 ->
  4. try 2 701 ->

X 2701
X 7201
X 2017

data structure: array
intermediary: string

ALGORITHM:

1) try to find the next biggest number
  -> have a counter to keep track of the number of places that we're in, starting at -2
  a) take our input integer and get the digits of that numbers
  b) iterate through the digits of that number until the counter has reached the negative length of the number
  c) get the last (counter) digits of the number store that in Array
  d) iterate through this new number
  find all the combinations
    take the digits of this new number
    swap the first and second, append this new number to the Array
    swap the first and last, append
    continue until alla re soortted
  and find the min value of that combination
  e) check if our next_bigger is greater than our input Integer
    * if it is, return this integer (STOP LOOPING)
    * if it isn't, continue to the next iteration (decrement counter by 1)
2)  return -1 if we can't find the next biggest number
=end


# def next_bigger_num(num)
#   next_bigger_num = num
#   digits = num.digits
#   counter = -2
#   while counter > -digits.length
#     p digits[-1..counter]
#     counter -= 1
#   end
#   next_bigger_num
# end

# next_bigger_num(9)# == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(2071) == 2107

# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# -> 27:32
##################################

=begin
 You have to create a method that takes a positive
 integer number and returns the next bigger
 number formed by the same digits
 
 12 -> 21
 513 -> 531
 111 -> -1

input: positive Integer
output: integer
  * next biggest number using the same digits
  * if there is no next biggest number, return -1

 12 -> 21 * switch the two numbers
 513 -> 531 * keep the hundreds place in place, and switch the tens and ones
 2017 -> 2071 * keep the thousands and hundreds, switch the tens and ones
 111 -> -1 

2071 -> 2107
  1. 2071
  2. try 20-17  -> no go
  3. try 2-710, 2-701 -> digits go in descending order

X 2701
X 7201
X 2017

data structure: array
intermediary: string

ALGORITHM:

1) try to find the next biggest number
  -> have a counter to keep track of the number of places that we're in, starting at -2
  a) take our input integer and get the digits of that numbers
  b) iterate through the digits of that number until the counter has reached the negative length of the number
  c) get the last (counter) digits of the number store that in Array
  d) iterate through this new number
  find all the combinations
    take the digits of this new number
    swap the first and second, append this new number to the Array
    swap the first and last, append
    continue until alla re soortted
  and find the min value of that combination
  e) check if our next_bigger is greater than our input Integer
    * if it is, return this integer (STOP LOOPING)
    * if it isn't, continue to the next iteration (decrement counter by 1)
2)  return -1 if we can't find the next biggest number
=end


def next_bigger_num(num)
  current_num = num
  max = num.digits.sort.reverse.join.to_i
  counter = 0
  loop do
    current_num += 1
    # return the current num if all the digits in current_num
    # match the digits in the original number
    return current_num if current_num.digits.sort == num.digits.sort
    return -1 if current_num >= max
  end
end

 next_bigger_num(9) == -1
p next_bigger_num(12)  == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(2071) == 2107

p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798