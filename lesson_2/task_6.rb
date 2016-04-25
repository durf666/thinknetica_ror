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
    product = value[:price] * value[:amount]
    puts "#{key}: #{product}"
    total_price += product
  end

  puts "total: #{total_price}$" 
end

shop