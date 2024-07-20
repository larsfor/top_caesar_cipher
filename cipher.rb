# frozen_string_literal: true

def caesar_cipher(string, rot)
  cipher = ''
  string.split('').each do |c|
    o = c.ord
    cipher += if o.between?(65, 90)
                ((((o + rot - 65) % 26) + 26) % 26 + 65).chr

              elsif o.between?(97, 122)
                ((((o + rot - 97) % 26) + 26) % 26 + 97).chr

              else
                c
              end
  end

  cipher
end
