def caesar_cipher(string, shift)
  string_arr = string.split("")
  num_arr = string_arr.each { |letter| letter = letter.to_i}
  p num_arr
end
caesar_cipher("Hello, there", 4)
