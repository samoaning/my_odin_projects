
def caesar_cipher(string, b)
  hsh = Hash[("a".."z").to_a.zip((1..26).to_a)]
  cap_hsh = Hash[("A".."Z").to_a.zip((1..26).to_a)]
  a = string.split("")

  a.map! do |v|
    b -= 26 while b > 26
    if hsh[v] != nil
      c = hsh[v] + b
      c -= 26 unless c <= 26
      hsh.key(c)
    elsif
      cap_hsh[v] != nil
      c = cap_hsh[v] + b
      c -= 26 unless c <= 26
      cap_hsh.key(c)
    else
      v
    end
  end
  a.join

end


