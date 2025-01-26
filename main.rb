def caesar_cipher(phrase, shift)
  result = ""
  phrase.each_byte do |byte|
    new_byte = byte
    case byte
      when 65..90
        new_byte = byte + shift
        new_byte -= 26 if new_byte > 90
      when 97..122
        new_byte = byte + shift
        new_byte -= 26 if new_byte > 122
    end
    result << new_byte.chr
  end
  puts result
end

caesar_cipher("What a string!", 5)