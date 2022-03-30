=begin
Write a function that accepts an array 
of 10 integers (between 0 and 9), 
that returns a string of those numbers 
in the form of a phone number.

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
The returned format must be correct in order to complete this challenge.
Don't forget the space after the closing parentheses!
=end


# input: array of 10 integers (0-9)
# output: string of those numbers in phone format (xxx) xxx-xxxx
def create_phone_number(arr)
# take array

  phone_number = "" # make an emptu string

  phone_number << "(#{arr[0, 3].join})"  # take first three digits, iterpolate between parenthesis, append to string

  phone_number << " #{arr[3, 3].join}-"  # take next three digits, interpolate and append hyphen, append to string

  phone_number << "#{arr[-4, 4].join}"# take last four digits, interpolate, append to string
# return string
end


p  create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"
p  create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == "(111) 111-1111"
p  create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"
