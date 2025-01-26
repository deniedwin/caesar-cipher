def caesar_cipher(phrase, shift)
  # string to store the new shifted string
  result = ""
  # method to get ascii number for each character
  phrase.each_byte do |byte|
    # new byte to use to for shift later
    new_byte = byte
    # case for two possibilities either lower or uppercaps
    case byte
      # for upper letters
      when 65..90
        new_byte = byte + shift
        new_byte -= 26 if new_byte > 90
      # for lower letters
      when 97..122
        new_byte = byte + shift
        new_byte -= 26 if new_byte > 122
    end
    # store all new chars in new string
    result << new_byte.chr
  end
  # print the new shifted string
  puts result
end

# call the method
caesar_cipher("What a string!", 5)