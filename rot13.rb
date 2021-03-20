def rot13(string)
  p string.codepoints.to_a.map{|byte| (byte.between?('a'.ord, 'm'.ord) || byte.between?('A'.ord, 'M'.ord)) ? byte+13 : (byte.between?('n'.ord, 'z'.ord) || byte.between?('N'.ord, 'Z'.ord)) ? byte-13 : byte }.pack('U*')
end