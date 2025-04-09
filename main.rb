# frozen_string_literal: true

# custom method to transform a string into a encrypted
# string using caesar cipher by shifting to the right
def caesar_cipher(phrase, shift)
  # string to store the new shifted string
  result = ''
  # method to get ascii number for each character
  phrase.each_byte do |byte|
    # new byte to encrypt by shift
    new_byte = byte
    # case for two possibilities either upper or lowercase
    case byte
      # for uppercase
    when 65..90
      # shift (or encrypt) the letter to the right by shift value
      new_byte = byte + shift
      # wrap around when the letter hit "Z"
      new_byte -= 26 if new_byte > 90
      # for lowercase
    when 97..122
      # shift (or encrypt) the letter to the right by shift value
      new_byte = byte + shift
      # wrap around when the letter hit "z"
      new_byte -= 26 if new_byte > 122
    end
    # store all new chars in new string
    result << new_byte.chr
  end
  # print the new shifted string
  puts result
end

# call the method
caesar_cipher('What a string!', 5)
