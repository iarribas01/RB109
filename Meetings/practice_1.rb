########## EASY SAMPLE PROBLEMS ########## 

# Given an array of integer values, find all the 
# duplicated numbers and return an array containing the duplicates

p find_duplicates([1, 2, 2, 3, 4]) == [2]
p find_duplicates([1, 2, 3, 4]) == []
p find_duplicates([1, 1, 2, 2, 3, 3, 4, 4]) == [1, 2, 3, 4]


# given an array of integer values, make a nested
# array containing the values and their quantity
# each subarray contains the value at the first 
# index and its quantity at the second

p find_duplicates([1, 2, 2, 3, 4]) == [[1, 1], [2, 2], [3, 1], [4, 1]]



# Write a method that takes an array containing repeated
# elements and returns a two dimensional array
# each sub array contains the repeated elements grouped together

p group_duplicates([1, 1, 2, 2, 3, 3, 3]) == [[1, 1], [2, 2], [3, 3, 3]]


########## SAMPLE PROBLEMS ########## 

=begin

Write a method that takes a string and returns
the sum of the odd integers within the string:

=end

p sum_of_numbers("Oh wh4t a be4ut1fu1 day 1t is" ) == 3
p sum_of_numbers("3apple 7orange 2banana" ) == 10
p sum_of_numbers("He110 world") == 0
p sum_of_numbers("He113 world") == 113
p sum_of_numbers("123a456") == 123
p sum_of_numbers("No numbers here!") == 0


#####################################


=begin
An anagram is the result of rearranging the 
letters of a word to produce a new word
Note: anagrams are case insensitive

Complete the function to return true if the two 
arguments given are anagrams of each other; 
return false otherwise.

Example
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"

=end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false


#####################################


=begin
Write a method given an array of integers, 
find the contiguous subarray within an 
array (containing at least one number) 
which has the largest product.

Return an integer corresponding to the maximum product possible.

Example
Input : [2, 3, -2, 4]
Return : 6 
Explanation: [2, 3]


=end



=begin

Write a method given a number and you will need to 
return it as a string in Expanded Form. 

Example:
  7029 -> '7000' + '20' + '9'

=end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'











############### MESSY STUFF, IGNORE ###################### 

=begin
Write a method that takes an array of integers and returns the length of 
the longest increasing subsequence
  * elements are in strictly increasing order
  * subsequence is as long as possible
  * This subsequence is not necessarily contiguous, or unique.

Constraints:
  * Length is at least 1

Example :

longest_increasing_subsequence([1, 2, 1, 5]) == 3
Explanation: The sequence : [1, 2, 5]

longest_increasing_subsequence([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]) == 6
Explanation: The sequence : [0, 2, 6, 9, 13, 15] or [0, 4, 6, 9, 11, 15] or [0, 4, 6, 9, 13, 15]

=end


# find the longest subsequence
# in which the number is always increasing
# starting with first number
# 
# iterate through each of the numbers
# create one branch, move onto the next number


longest_increasing_subsequence([1, 2, 1, 5]) == 3
longest_increasing_subsequence([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]) == 6