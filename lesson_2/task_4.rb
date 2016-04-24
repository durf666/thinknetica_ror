def letters
  letter = ['a', 'e', 'i', 'o', 'u', 'y']
  numbers = [0, 4, 8, 14, 20, 24]

  hash = Hash[letter.zip numbers]
  puts hash
end

letters
