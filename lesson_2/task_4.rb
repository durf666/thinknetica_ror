def alphabet
  hash = {}
  dic = ["a", "e", "i", "o", "u", "y"]
  letters = ("a".."z").to_a
  letters.each_with_index do |item, index|
      if dic.include?(item)
        hash[item] = index + 1
      end    
  end

  puts hash.inspect
end

alphabet