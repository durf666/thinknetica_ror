def ideal_weight
  puts "What's your name?"
  name = gets.chomp

  puts "What's your height in centimeters?"
  height = Float(gets.chomp)

  ideal = height.to_f - 110
      
  if ideal > 0
	puts "#{name}, your ideal_weight is #{ideal} kg"
  else
  	puts "Your weight is ideal"
  end
end

ideal_weight