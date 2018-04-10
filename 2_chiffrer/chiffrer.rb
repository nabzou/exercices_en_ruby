 
def caesar_cipher(string, shift = 3)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher("what a string").join
#ainsi, on obtient sur la console "zkdw d vwulqj"
