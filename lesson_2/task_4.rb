def alphabet
  hash = {}
  letters = ("a".."z").to_a
  letters.each_with_index { |item, index| hash[item] = index }

  puts total = {
    "a" => hash["a"],
    "e" => hash["e"],
    "i" => hash["i"],
    "o" => hash["o"],
    "u" => hash["u"],
    "y" => hash["y"],
  }
end

alphabet
