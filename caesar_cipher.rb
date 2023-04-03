def caesar_cipher(phrase, shift)
  chars = phrase.bytes
  shifted_chars = []

  for i in 0...chars.length
    if chars[i].between?(65, 90)
      shifted_chars[i] = chars[i] + shift
      shifted_chars[i] = shifted_chars[i] - 26 if shifted_chars[i] > 90
    elsif chars[i].between?(97, 122)
      shifted_chars[i] = chars[i] + shift
      shifted_chars[i] = shifted_chars[i] - 26 if shifted_chars[i] > 122
    else
      shifted_chars[i] = chars [i]
    end
  end

  chars = shifted_chars.pack('C*')
  puts chars
end

caesar_cipher('uvz UVZ abc ABC', 5)
