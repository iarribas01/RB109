DEC_TO_HEX = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
  10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F'
}

def rgb(r, g, b)
  dec_to_hex(r)
  

end

def dec_to_hex(decimal)
  remainder, digit = decimal.divmod(16)
  hex = DEC_TO_HEX[digit]
  remainder, digit = decimal.divmod(16)
  hex << DEC_TO_HEX[digit]
  remainder, digit = decimal.divmod(16)
  hex << DEC_TO_HEX[digit]

  hex
end

p rgb(0, 0, 0) #== '000000'
p rgb(0, 0, -20)# == '000000'
p rgb(300,255,255)# == 'FFFFFF'
p rgb(173,255,47)# == 'ADFF2F'