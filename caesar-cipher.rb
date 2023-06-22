def shift_letters(alphabet, letter, shift)
  new_letter = alphabet[alphabet.index(letter) + shift]
  if new_letter
    new_letter
  else
    new_letter = alphabet[alphabet.index(letter) + shift - 26]
  end
end

def caesar_cipher(string, shift)
  string_arr = string.split("")
  lowcase_alphabet = ("a".."z").to_a
  upcase_alphabet = ("A".."Z").to_a

  encrypted_arr = string_arr.map do |letter|
    if lowcase_alphabet.include?(letter)
      letter = shift_letters(lowcase_alphabet, letter, shift)
    elsif upcase_alphabet.include?(letter)
      letter = shift_letters(upcase_alphabet, letter, shift)
    else
      letter
    end
  end
  encrypted_arr.join
end
puts caesar_cipher("What a string!", 5)