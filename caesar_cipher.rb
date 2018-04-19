=begin
Author: Steve Yankson
Project "Stock picker" from The Odin Project
18th/April/2018
=end


def caesar_cipher(string, shift_factor)
  @string = string
  @shift_factor = shift_factor.to_i

  encrypt = @string.split('').map! do |v|
    if v == " "
      v.ord
    else
      v.ord  + @shift_factor
    end
  end
  readable_format = encrypt.map! { |k| k.chr }
  return readable_format.join("")
end

caesar_cipher('good morning hi', 10)
