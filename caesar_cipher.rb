def caesar_cipher(str, shift)
  result = ''
  str.each_char do |char|
    ascii_offset = char.ord

    #For uppercase letters
    if char.match(/[A-Z]/)
      shifted = ((ascii_offset - 65 + shift) % 26) + 65
      result << shifted.chr

      #For lowercase letters
    elsif char.match(/[a-z]/)
      shifted = ((ascii_offset - 97 + shift) % 26) + 97
      result << shifted.chr
      # Non-alphabetic characters remain unchanged
    else
      result << char
    end
  end
  result
end
puts caesar_cipher("I love going to the beach!", 3)
