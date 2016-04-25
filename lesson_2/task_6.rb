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

  total_price = 0

  cart.each do |key, value|
    puts "#{key}: #{value[:price] * value[:amount] }"
    total_price += value[:price] *  value[:amount]
  end

  puts "total: #{total_price}$" 
end

shop