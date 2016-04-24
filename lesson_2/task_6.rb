def shop
  cart = {}
  item = 0
  while item != "stop"
    print "item: "
    item = gets.chomp

    print "price: "
    price = gets.chomp.to_f

    print "amount: "
    amount = gets.chomp.to_f
    cart[item] = {price: price, amount: amount}
  end
  cart.delete("stop")
  puts cart

  cart.each do |key, value|
    puts "#{key}: #{value[:price] * value[:amount] }"
  end

  total_price = 0

  cart.each_value do |item|
    total_price += item[:price] *  item[:amount]
  end  
  puts "total: #{total_price}$" 
end

shop