=begin
The rgb function is incomplete. 
Complete it so that passing in RGB decimal values 
will result in a hexadecimal representation being
 returned. Valid decimal values for RGB are 0 - 255.
  Any values that fall out of that range must be
   rounded to the closest valid value.

Note: Your answer should always be 6 characters 
long, the shorthand with 3 will not work here.

The following are examples of expected output values:

input: 3 integers, 0-255
output: string, hexadecimal representing all values 000000 - FFFFFF
  * 6 digits long

How to convert dec to hex
  1. divide num by 16
  2. keep remainder as digit
  3. divide result by 16
  4. continue until 0


=end

def rgb(r, g, b)
  # [r, g, b].map do |decimal|
  #   decimal = 255 if decimal > 255
  #   decimal == 0 ? hexadecimal = '00' : hexadecimal = ''
  #   until decimal == 0
  #     decimal, digit = decimal.divmod(16)
  #     hexadecimal.prepend(digit.to_s(16))
  #   end
  #   hexadecimal.upcase
  # end.join
  [r, g, b].map do |decimal|
    if decimal > 255
      'FF'
    elsif decimal < 0
      '00'
    else
      decimal.to_s(16).upcase.rjust(2, '0')
    end
  end.join
end


p rgb(255, 255, 255) == 'FFFFFF'
p rgb(255, 255, 300) ==  'FFFFFF'
p rgb(0,0,0) ==  '000000'
p rgb(148, 0, 211) ==  '9400D3'
p rgb(255, 255, 255) ==  'FFFFFF'
p rgb(255, 255, 300) ==  'FFFFFF'
p rgb(0,0,0) ==  '000000'
p rgb(148, 0, 211) ==  '9400D3'
p rgb(0, 0, -20) == '000000'


  