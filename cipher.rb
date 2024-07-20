def caesar_cipher(string, rot)
  cipher = ''
  string.split('').each do |c|
    o = c.ord
    if o.between?(65, 90)
      cipher += ((((o + rot - 65) % 26) + 26) % 26 + 65).chr

    elsif o.between?(97, 122)
      cipher += ((((o + rot - 97) % 26) + 26) % 26 + 97).chr
    
    else
      cipher += c
    end
  end

  cipher
end