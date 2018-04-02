def caesar_cipher(string, shift_factor)
  @string = string
  @shift_factor = shift_factor.to_i

  encrypt = @string.split('').map! { |v| v.ord  + @shift_factor }
  readable_format = encrypt.map! { |k| k.chr }
  return readable_format.join("")
end
