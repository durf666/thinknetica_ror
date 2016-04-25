def alphabet
  hash = {}
  dic = ["a", "e", "i", "o", "u", "y"]
  letters = ("a".."z").to_a
  letters.each_with_index do |item, index|
    dic.each do |i|
      if i.include?(item)
        hash[i] = index + 1
      end
    end
  end

  puts hash.inspect
end

alphabet